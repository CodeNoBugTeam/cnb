package Bize;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public class Code {

	public static String achieveCode() {
		// �������� 1 �� 0 ����ĸ O ��l ��ʱ�ֲ���������ԣ�û������ 1 �� 0
		String[] beforeShuffle = new String[] { "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F",
				"G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "a",
				"b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v",
				"w", "x", "y", "z" };
		List list = Arrays.asList(beforeShuffle);// ������ת��Ϊ����
		Collections.shuffle(list); // ���Ҽ���˳��
		StringBuilder sb = new StringBuilder();
		for (int i = 0; i < list.size(); i++) {
			sb.append(list.get(i)); // ������ת��Ϊ�ַ���
		}
		return sb.toString().substring(3, 8); // ��ȡ�ַ�����4��8
	}

	public static void main(String[] args) {
		String s = achieveCode();
		System.out.println(s);
	}

}
