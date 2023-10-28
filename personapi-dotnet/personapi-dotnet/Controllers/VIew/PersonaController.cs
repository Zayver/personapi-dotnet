using System.ComponentModel.DataAnnotations;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using personapi_dotnet.Models.Entities;

namespace personapi_dotnet.Controllers.View;


public class PersonaController : Controller
{
    private readonly PersonaDbContext _personaContext;

    public PersonaController(PersonaDbContext context)
    {
        _personaContext = context;
    }

    // /Persona (GET)
    public async Task<IActionResult> Index()
    {
        return _personaContext.Personas != null ?
                    View(await _personaContext.Personas.ToListAsync()) :
                    Problem("Entity set 'PersonaDbContext.Personas'  is null.");
    }

    public async Task<IActionResult> Details([Required] int id)
    {
        if (!ModelState.IsValid)
        {
            return BadRequest();
        }

        var persona = await _personaContext.Personas.FirstOrDefaultAsync((p) => p.Cc == id);

        return persona == null ? NotFound($"La persona con id:{id} no existe") : View(persona);
    }

    public IActionResult Create()
    {
        return View();
    }

    [HttpPost]
    public async Task<IActionResult> Create([Bind("Cc,Nombre,Apellido,Genero,Edad")] Persona persona)
    {
        if (ModelState.IsValid)
        {
            _personaContext.Add(persona);
            await _personaContext.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }
        return View(persona);
    }

    [HttpDelete]
    public async Task<IActionResult> Delete([Required] int id)
    {
        var persona = await _personaContext.Personas.FirstOrDefaultAsync(m => m.Cc == id);
        
        return Ok();//persona == null ? 
    }


}