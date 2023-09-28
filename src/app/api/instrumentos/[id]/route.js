import { NextResponse } from "next/server";
import { pool } from "../../../../../config/db";

export async function GET(request, { params }) {
  try {
    const [result] = await pool.query(
      "SELECT * from instrumentos WHERE nro_inv = ?",
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
      "DELETE FROM instrumentos WHERE nro_inv = ?",
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
      "UPDATE instrumentos SET nro_inv = IFNULL(?,nro_inv),cod_rec = IFNULL(?,cod_rec),tipo = IFNULL(?,tipo),descripcion = IFNULL(?,descripcion),marca = IFNULL(?,marca),modelo = IFNULL(?,modelo),sn = IFNULL(?,sn),ab_rango = IFNULL(?,ab_rango),cod_manual = IFNULL(?,cod_manual),especificaciones = IFNULL(?,especificaciones),estado = IFNULL(?,estado),ubicacion = IFNULL(?,ubicacion),adicionales = IFNULL(?,adicionales),fecha_ingreso = IFNULL(?,fecha_ingreso) WHERE nro_inv = ?",
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
        params.id,
      ]
    );
    return NextResponse.json(result);
  } catch (error) {
    // console.log(error)
    return NextResponse.json({ error });
  }
}
