using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WinRecognize
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            SpeechRecognitionEngine recognize = new SpeechRecognitionEngine(new System.Globalization.CultureInfo("en-US"));
            recognize.SetInputToDefaultAudioDevice();
            recognize.LoadGrammar(new DictationGrammar());
            recognize.RecognizeAsync(RecognizeMode.Multiple);
            recognize.SpeechRecognized += new EventHandler<SpeechRecognizedEventArgs>(recognize_recognized);
            while (true)
            {
                Console.ReadKey();
            }
        }
        private static void recognize_recognized(object sender, SpeechRecognizedEventArgs e)
        {
            Console.WriteLine(e.Result.Text);
        }
    }
}
