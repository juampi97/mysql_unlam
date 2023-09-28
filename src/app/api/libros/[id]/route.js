import { NextResponse } from "next/server";
import { pool } from "../../../../../config/db";

export async function GET(request, { params }) {
  try {
    const [result] = await pool.query(
      "SELECT * from libros WHERE id = ?",
      [params.id]
    );
    return NextResponse.json(result);
  } catch (error) {
    // console.log(error)
    return NextResponse.json({ error });
  }
}

export async function DELETE(request, { params }) {
  try {
    const [result] = await pool.query(
      "DELETE FROM libros WHERE id = ?",
      [params.id]
    );
    return NextResponse.json(result);
  } catch (error) {
    // console.log(error)
    return NextResponse.json({ error });
  }
}

export async function PATCH(request, { params }) {
  try {
    const {
      id,
      descripcion,
      idioma,
      tipo,
      ubicacion,
      instrumento_asociado
    } = await request.json();
    const [result] = await pool.query(
      "UPDATE libros SET id = IFNULL(?,id), descripcion = IFNULL(?,descripcion), idioma = IFNULL(?,idioma), tipo = IFNULL(?,tipo), ubicacion = IFNULL(?,ubicacion), instrumento_asociado = IFNULL(?,instrumento_asociado)  WHERE id = ?",
      [
      id,
      descripcion,
      idioma,
      tipo,
      ubicacion,
      instrumento_asociado,
      params.id,
      ]
    );
    return NextResponse.json(result);
  } catch (error) {
    // console.log(error)
    return NextResponse.json({ error });
  }
}
