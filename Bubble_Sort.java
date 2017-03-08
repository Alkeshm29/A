import myutility.*;
import java.util.Arrays;
import java.util.Scanner;

public class Bubble_Sort {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Utility u=new Utility();
		Scanner sc=new Scanner(System.in);

		System.out.println("Enter Size ");
		int size=sc.nextInt();
		int[] arr = new int[size];
		System.out.println("Enter Elements");
		for(int i=0;i<size;i++)
			arr[i]=sc.nextInt();

		System.out.println("Before sorting : " + Arrays.toString(arr));
		u.bubbleSort(arr);
		System.out.println("After sorting : " + Arrays.toString(arr)); 
		sc.close();
		
	}
}