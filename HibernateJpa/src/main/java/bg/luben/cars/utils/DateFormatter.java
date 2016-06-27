package bg.luben.cars.utils;

import java.util.Date;
import org.springframework.stereotype.Component;

import java.text.ParseException;
import java.text.SimpleDateFormat;

@Component
public class DateFormatter {

	public static String myDate(Date date) throws ParseException {
		date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy");
		String currentTime = sdf.format(date);
		Date parsed = sdf.parse(currentTime);
		return parsed.toString();
	}

	public static Date getFormattedDate(Date date) throws ParseException {
		String formatedDate = "yyyy-MM-dd";
		SimpleDateFormat sdf = new SimpleDateFormat(formatedDate);
		formatedDate = sdf.format(date);
		Date parsed = sdf.parse(formatedDate);
		return parsed;
	}
	public static void main(String[] args) {
		System.err.println("Hello");
	}
}
