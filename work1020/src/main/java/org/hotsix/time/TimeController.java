package org.hotsix.time;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/time")
public class TimeController {
	
	@RequestMapping(value="/start", method = RequestMethod.GET)
	public String doA() {
		return "time";
	}
	
	@RequestMapping(value="/getTime", produces = "text/plain;charset=utf-8", method = RequestMethod.GET)
	//@ResponseBody�� �̿��ؼ� ������ �����͸� �ѱ�ó���ϴ� ���� ���� �ؾ��Ѵ�? == > produces = "text/plain;charset=utf-8",
	public @ResponseBody String getTime(Locale locale) {
		
		System.out.println("getTime()~~~~~~~~~~~~~~~~~~~~");
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		return formattedDate;
	}
}
