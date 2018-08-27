package se.johan.stuff;

import com.google.gson.Gson;
import se.telavox.base.Base;


public class MainClass {


    public static void main (String[] args) {

        Gson gson = new Gson();

        System.out.println("Gson is html safe - " + gson.htmlSafe());
        MainLibraryClass.callMe();
        System.out.println("Base attribute name is: " + Base.ATTRIBUTE_NAME);

    }
}
