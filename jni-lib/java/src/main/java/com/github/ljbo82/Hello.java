/*
    This file is part of gcc-project-builder.
    Copyright (C) 2021 Leandro José Britto de Oliveira

    gcc-project-builder is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 2 of the License, or
    (at your option) any later version.

    gcc-project-builder is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with gcc-project-builder.  If not, see <https://www.gnu.org/licenses/>
*/
package com.github.ljbo82;

public class Hello {
	private static void runPerson() {
		JniPerson tom = new JniPerson("Tom", 20);
		JniPerson jerry = new JniPerson("Jerry", 18);

		System.out.println(tom.toString());
		System.out.println(jerry.toString());

		tom.setName("TOM").setAge(40);
		jerry.setName("JERRY").setAge(36);

		System.out.println(tom.toString());
		System.out.println(jerry.toString());
	}

	private static void runVector2D() {
		JniVector2D v1 = new JniVector2D(1, 0);
		JniVector2D v2 = new JniVector2D(0, 1);

		System.out.println(v1.toString());
		System.out.println(v2.toString());

		v1.setX(3.2).setY(5.2);
		v2.setX(-3.0);

		System.out.println(v1.toString());
		System.out.println(v2.toString());
	}

	public static void main(String[] args) {
		runPerson();
		runVector2D();

		System.gc(); // Causes finalize methods to be called on pending objects
	}
}
