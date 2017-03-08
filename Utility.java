package myutility;

public class Utility {
	String[] Array;
	String temp;

	// ------------------------ Program for Bubble sort Integer-------------
	public void bubbleSort(int[] arr) {
		int n = 5;
		int temp = 0;
		for (int i = 0; i < n; i++) {
			for (int j = 1; j < (n - i); j++) {
				if (arr[j - 1] > arr[j]) {
					temp = arr[j - 1];
					arr[j - 1] = arr[j];
					arr[j] = temp;
				}
			}
		}

	}

	// ------------------------ Program for Bubble sort String-------------
	public void bubble_string(String str) {
		Array = str.split(" ");
		for (int a = 1; a < Array.length; a++) {
			for (int b = 0; b < Array.length - b; b++) {
				if (Array[b].compareTo(Array[b + 1]) > 0) {
					temp = Array[b];
					Array[b] = Array[b + 1];
					Array[b + 1] = temp;
				}
			}
		}

	}

	public void display() {
		for (int i = 0; i < Array.length; i++) {
			System.out.println("The sorted values are " + Array[i]);
		}
	}

	// -------------------------Insertion sort for Int-------------------------
	public static void insertionSort(int[] arr) {
		for (int i = 1; i < arr.length; i++) {
			int j = i;
			while (j > 0 && arr[j] < arr[j - 1]) {
				int temp = arr[j - 1];
				arr[j - 1] = arr[j];
				arr[j] = temp;
				j--;
			}
		}
	}

	// -----------------------Insertion sort String----------------------
	public void insert_string(String str) {
		Array = str.split(" ");
		for (int a = 1; a < Array.length; a++) {
			for (int b = a; b <= Array.length - b; b++) {
				if (Array[b - 1].compareTo(Array[b]) > 0) {
					temp = Array[a];
					Array[a] = Array[b];
					Array[b] = temp;

				}
			}
		}

	}

	// ---------------------------Binary Search For String----------------------
	public void binaryStr(String str1[], String str2) {
		int start = 0, end, mid, count = 0;
		int size = str1.length;
		end = size - 1;

		while (start <= end) {
			mid = (start + end) / 2;
			if (str2.compareTo(str1[mid]) == 0) {
				System.out.println("\nSearch found at position :" + mid);
				count++;
				break;
			}
			if (str2.compareTo(str1[mid]) < 0)
				end = mid - 1;
			else
				start = mid + 1;
		}
		if (count == 0)
			System.out.println("\nSearch not found");

	}

}
