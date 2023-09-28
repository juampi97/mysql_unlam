import { NextResponse } from "next/server";
import { pool } from "../../../../config/db";

export async function GET() {
  try {
    const [result] = await pool.query("SELECT * from libros ORDER BY id");
    return NextResponse.json(result);
  } catch (error) {
    // console.log(error)
    return NextResponse.json({ error });
  }
}

export async function POST(request) {
  try {
    const { id, descripcion, idioma, tipo, ubicacion, instrumento_asociado } =
      await request.json();
    const [result] = await pool.query(
      "INSERT INTO libros VALUES (?,?,?,?,?,?)",
      [id, descripcion, idioma, tipo, ubicacion, instrumento_asociado]
    );
    return NextResponse.json({ result });
  } catch (error) {
    // console.log(error)
    return NextResponse.json({ error });
  }
}
