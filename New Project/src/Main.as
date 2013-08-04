package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.TextEvent;
	import flash.events.KeyboardEvent;
	import flash.ui.Keyboard;
	import flash.text.*;
	[SWF(width="800", height="500", backgroundColor="0xFFFFFF")]
	
	/**
	 * ...
	 * @author Jack
	 */
	public class Main extends Sprite 
	{
		protected var m_inputBox:TextField;
		protected var m_outputBox:TextField;
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			
			m_inputBox = new TextField();
			m_inputBox.type = TextFieldType.INPUT;
			m_inputBox.background = true;
			m_inputBox.backgroundColor = 100000000;
			m_inputBox.width = 800;
			m_inputBox.height = m_inputBox.textHeight + 5;
			addChild(m_inputBox);
			stage.addEventListener(KeyboardEvent.KEY_DOWN, textCapture);
			
			m_outputBox = new TextField();
			m_outputBox.width = 800;
			m_outputBox.y = m_inputBox.height;
			addChild(m_outputBox);
		}		
		
		private function textCapture(event:KeyboardEvent):void
		{
			switch(event.keyCode)
			{
				case(Keyboard.ENTER):
					var str:String = m_inputBox.text;
					m_inputBox.text = "";
					handleInput(str);
					createOutput(str);
					break;
			}
			
		}
		
		private function handleInput(str:String):void
		{
			
		}
		
		/**
		 * Prints str to the screen
		 * @param	str
		 */
		private function createOutput(str:String):void
		{
			m_outputBox.background = true; 
			
            m_outputBox.text = m_outputBox.text + "\n" + str;
		}
	}	
}