import { NextResponse } from "next/server";
import { pool } from "../../../../config/db";

export async function GET() {
  try {
    const [result] = await pool.query(
      "SELECT * from instrumentos ORDER BY nro_inv"
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
      tipo,
      descripcion,
      marca,
      modelo,
      sn,
      ab_rango,
      cod_manual,
      espeficicaciones,
      estado,
      ubicacion,
      adicionales,
      fecha_ingreso,
    } = await request.json();
    const [result] = await pool.query(
      "INSERT INTO instrumentos VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)",
      [
        nro_inv,
        cod_rec,
        tipo,
        descripcion,
        marca,
        modelo,
        sn,
        ab_rango,
        cod_manual,
        espeficicaciones,
        estado,
        ubicacion,
        adicionales,
        fecha_ingreso,
      ]
    );
    return NextResponse.json({ result });
  } catch (error) {
    // console.log(error)
    return NextResponse.json({ error });
  }
}
