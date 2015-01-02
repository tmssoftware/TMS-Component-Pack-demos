using System;
using System.Drawing;
using System.Collections;
using System.IO;
using System.Text;

namespace RTLLib
{	
	#region Header Classes

	public class FontTable
	{
		private ArrayList FFonts;

		public FontTable()
		{
			FFonts = new ArrayList();
		}

		public ArrayList Fonts
		{
			get {
                             return FFonts;
                            }
		}

		/*
		public int IndexOf(string FaceName)
		{
			int i;
			int rtn = -1;
			return rtn;
		}
		*/
	}

	
	#endregion 

}
