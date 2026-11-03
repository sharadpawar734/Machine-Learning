import java.util.Scanner;

public class Compiler_1 {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        System.out.println("Enter the Operators");
        String op = sc.next();

        switch (op){
            case "+":
            case "-":
            case "*":
            case "/":
            case "%":
                System.out.println("valid Arthmatic operator");
                break;

            case ">":
            case "<":
            case "<=":
            case ">=":
            case "==":
            case "=!":
                System.out.println("valid realation operator");
                break;

            case "=":
            case "-=":
            case "+=":
                System.out.println("valid assigmnet operators");
                break;

            case "!":
            case "||":
            case "&&":
                System.out.println("valid logical operator");
                break;

            default:
                System.out.println("Invalid operators");
        }
    }
}
