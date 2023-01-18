internal class Program
{
    public record Route(string RouteStart, string RouteEnd, int RouteNumber);
    private static void Main(string[] args)
    {
        Route[] Routes = new Route[3];
        string newRouteStart, newRouteEnd;
        int newRouteNumber;
        bool isExit = false;
        for (int i = 0; i < Routes.Length; i++)
        {
            Console.Write("Введить начало маршрута: ");
            newRouteStart = Console.ReadLine();
            Console.Write("Введить конец маршрута: ");
            newRouteEnd = Console.ReadLine();
            Console.Write("Введить номер: ");
            newRouteNumber = Convert.ToInt32(Console.ReadLine());
            Routes[i] = new Route(newRouteStart,newRouteEnd,newRouteNumber);
        }
        Routes = Routes.OrderBy(rn => rn.RouteNumber).ToArray();
        string fileName;
        Console.WriteLine("Введите название файла!");
        fileName = Console.ReadLine();
        string path = $@"C:\Users\student\Desktop\Bullshit\{fileName}.txt";
        for (int i = 0; i < Routes.Length; i++)
        {
            File.AppendAllText(path, $"{Routes[i].RouteStart} - {Routes[i].RouteEnd} номер {Routes[i].RouteNumber}; ");
        }
        
        while (isExit!=true)
        {
            int SearchNumber=0;
            int index = 0;
            bool isExist = false;
            Console.Write("Введите номер маршрута: ");
            SearchNumber = Convert.ToInt32(Console.ReadLine());
            for (int i = 0; i < Routes.Length; i++)
            {
                if (SearchNumber == Routes[i].RouteNumber)
                {
                    index = i;
                    isExist = true;
                }
            }
            if (isExist)
                Console.WriteLine($"{Routes[index].RouteStart} - {Routes[index].RouteEnd} номер {Routes[index].RouteNumber}");
            else
                Console.WriteLine("Такого маршрута нет!");
            Console.WriteLine();
        }
    }
}