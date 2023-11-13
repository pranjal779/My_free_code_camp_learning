string projectName = "ACME";

string russianMessage = "\u041f\u043e\u0441\u043c\u043e\u0442\u0440\u0435\u0442\u044c \u0440\u0443\u0441\u0441\u043a\u0438\u0439 \u0432\u044b\u0432\u043e\u0434";

string englishFileLocation = $@"c:\Exercise\{projectName}\data.txt";

string russianFileLocation = $@"c:\Exercise\{projectName}\ru-RU\data.txt";

Console.WriteLine($@"{projectName}:
    c:\Exercise\{projectName}\data.txt

{russianMessage}:
    c:\Exercise\ACME\{russianMessage}\data.txt");

Console.WriteLine($"{russianMessage}:\n\t\t{russianFileLocation}");

Console.WriteLine($"View English output:\n\t\t{englishFileLocation}\n");

