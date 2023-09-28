import { NextResponse } from "next/server";
import { pool } from "../../../../config/db";

export async function GET() {
  try {
    const [result] = await pool.query(
      "SELECT * from proyectores ORDER BY nro_inv"
    );
    return NextResponse.json(result);
  } catch (error) {
    // console.log(error)
    return NextResponse.json({ error });
  }
}

export async function POST(request) {
  try {
    const {
      nro_inv,
      cod_rec,
      marca,
      modelo,
      sn,
      estado,
      ubicacion,
      fecha_ingreso,
      vga,
      hdmi,
      adicionales,
    } = await request.json();
    const [result] = await pool.query(
      "INSERT INTO proyectores VALUES (?,?,?,?,?,?,?,?,?,?,?)",
      [
        nro_inv,
        cod_rec,
        marca,
        modelo,
        sn,
        estado,
        ubicacion,
        fecha_ingreso,
        vga,
        hdmi,
        adicionales,      ]
    );
    return NextResponse.json({ result });
  } catch (error) {
    // console.log(error)
    return NextResponse.json({ error });
  }
}
