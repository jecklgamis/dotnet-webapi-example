var builder = WebApplication.CreateBuilder(args);

builder.Services.AddControllers();
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

var app = builder.Build();

if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
    foreach (var c in app.Configuration.AsEnumerable())
    {
        Console.WriteLine(c.Key + " = " + c.Value);
    }
}

app.UseAuthorization();
app.MapGet("/", () =>
{
    var data = new Dictionary<string, object>
    {
        ["name"] = "dotnet-webapi-example",
        ["message"] = "It works on my machine!"
    };
    return Results.Ok(data);
});
app.MapGet("/probe/live", () => Results.Text("I'm alive!"));
app.MapGet("/probe/ready", () => Results.Text("I'm ready!"));
app.Logger.LogInformation("App started");
app.Run();