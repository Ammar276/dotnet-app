var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

app.MapGet("/", () => "Hotfix v2.0 Applied Successfully!");

app.Run();
