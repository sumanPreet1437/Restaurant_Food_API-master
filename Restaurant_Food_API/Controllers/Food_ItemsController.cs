using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Restaurant_Food_API.Data;
using Restaurant_Food_API.Models;

namespace Restaurant_Food_API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class Food_ItemsController : ControllerBase
    {
        private readonly Restaurant_Food_APIContext _context;

        public Food_ItemsController(Restaurant_Food_APIContext context)
        {
            _context = context;
        }

        // GET: api/Food_Items
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Food_Items>>> GetFood_Items()
        {
            return await _context.Food_Items.ToListAsync();
        }

        // GET: api/Food_Items/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Food_Items>> GetFood_Items(int id)
        {
            var food_Items = await _context.Food_Items.FindAsync(id);

            if (food_Items == null)
            {
                return NotFound();
            }

            return food_Items;
        }

        // PUT: api/Food_Items/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPut("{id}")]
        public async Task<IActionResult> PutFood_Items(int id, Food_Items food_Items)
        {
            if (id != food_Items.Id)
            {
                return BadRequest();
            }

            _context.Entry(food_Items).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!Food_ItemsExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        // POST: api/Food_Items
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPost]
        public async Task<ActionResult<Food_Items>> PostFood_Items(Food_Items food_Items)
        {
            _context.Food_Items.Add(food_Items);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetFood_Items", new { id = food_Items.Id }, food_Items);
        }

        // DELETE: api/Food_Items/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<Food_Items>> DeleteFood_Items(int id)
        {
            var food_Items = await _context.Food_Items.FindAsync(id);
            if (food_Items == null)
            {
                return NotFound();
            }

            _context.Food_Items.Remove(food_Items);
            await _context.SaveChangesAsync();

            return food_Items;
        }

        private bool Food_ItemsExists(int id)
        {
            return _context.Food_Items.Any(e => e.Id == id);
        }
    }
}
