using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using RecommendFood.Models.Entity;
var builder = WebApplication.CreateBuilder(args);
var connectionString = builder.Configuration.GetConnectionString("DatabaseInfor") ?? throw new InvalidOperationException("Connection string 'FoodDBContextConnection' not found.");
//builder.Services.AddControllersWithViews();
builder.Services.AddDbContext<FoodDBContext>(options => options.UseSqlServer(connectionString));

builder.Services.AddDefaultIdentity<IdentityUser>(options => options.SignIn.RequireConfirmedAccount = true).AddEntityFrameworkStores<FoodDBContext>().AddDefaultTokenProviders();
//builder.Services.AddIdentity<User, IdentityRole>();
//builder.Services.AddScoped<UserManager<User>>();
// Add services to the container.
builder.Services.AddControllersWithViews();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();

app.UseAuthentication();
app.UseAuthorization();

app.MapRazorPages();

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Introduce}/{action=Index}/{id?}");

app.Run();
