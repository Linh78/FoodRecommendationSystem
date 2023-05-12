using System.Diagnostics;

namespace RecommendFood.RecommendSystem
{
    public class RecommendSystem
    {
        public void TOPSIS_ExecProcess(Recommend rc)
        {
            //1)Create Process Info
            var psi = new ProcessStartInfo();
            psi.FileName = @"C:\Users\Linh\Anaconda3\python.exe";

            //2) Provide script and arguments
            rc.script = @"topsis.py";
            //var inputFile = @"C:\Users\Linh\Desktop\ConsoleApp1\ConsoleApp2\data.csv";
            //var weight = "0.68,0.17,0.1667";
            //var impact = "+,+,+";
            //var resultFile = @"C:\Users\Linh\Desktop\ConsoleApp1\ConsoleApp2\result.csv";

            // psi.Arguments = $"\"{script}\"\"{start}\"\"{end}\"";
            psi.Arguments = $"\"{rc.script}\" \"{rc.inputFile}\" \"{rc.weights}\" \"{rc.impact}\" \"{rc.outputFile}\"";
            //3) Process configuration
            psi.UseShellExecute = false;
            psi.CreateNoWindow = true;
            psi.RedirectStandardOutput = true;
            psi.RedirectStandardError = true;

            //4) Execute process and get output
            var errors = "";
            var result = "";
            using (var process = Process.Start(psi))
            {
                errors = process.StandardError.ReadToEnd();
                result = process.StandardOutput.ReadToEnd();
            }

            //5) Display output
            Console.WriteLine("ERRORS:");
            Console.WriteLine(errors);
            Console.WriteLine();
            Console.WriteLine("Result: ");
            Console.WriteLine(result);
            Console.WriteLine();
        }
    }
}
