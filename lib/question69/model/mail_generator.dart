
import 'mail_content.dart';

class MailGenerator {
  static var mailList = [
    MailContent("Buy This Item", "Amazon", "1 Sep",
        "80 % Off Special Offer"),
    MailContent("Login Activity", "Google ", "20 Oct",
        "Your Google Account Just Login On Realme30Pro"),
    MailContent("Your Channel Hacked", "Youtube", "31 Oct",
        "Your Yt Channel Is Hacked"),
    MailContent("Facebook Password Reset", "FaceBook", "1 Nov",
        "Facebook Verificaton Otp Number 737467 "),
    MailContent("Shoes Offer", "Meesho", "10 Nov",
        "This Diwali Big Offer On Shoes"),
    MailContent("Cricket Live Match", "Jio Cinema", "17 Jan",
        "Watch ind vs Eng Live Match"),
    MailContent("Your Bus Booking", "Gsrtc Bus", "23 Jan",
        "Your Gsrtc Bus Ticket print Here"),
    MailContent("Chessy Message For Paresh", "Swiggy", "9 Feb",
        "Tap To Read. Tap To checkout! dpn't miss.."),
    MailContent("Is India the next tourism hotspot", "Phonepe", "10 fFb",
        "Check out hte recent budget announcement"),
  ];

  static MailContent getMailContent(int position) => mailList[position];
  static int mailListLength = mailList.length;
}