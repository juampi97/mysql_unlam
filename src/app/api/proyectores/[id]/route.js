import { NextResponse } from "next/server";
import { pool } from "../../../../../config/db";

export async function GET(request, { params }) {
  try {
    const [result] = await pool.query(
      "SELECT * from proyectores WHERE nro_inv = ?",
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
      "DELETE FROM proyectores WHERE nro_inv = ?",
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
      "UPDATE proyectores SET nro_inv = IFNULL(?,nro_inv),cod_rec = IFNULL(?,cod_rec),marca = IFNULL(?,marca),modelo = IFNULL(?,modelo),sn = IFNULL(?,sn), estado = IFNULL(?,estado),ubicacion = IFNULL(?,ubicacion),fecha_ingreso = IFNULL(?,fecha_ingreso), vga = IFNULL(?,vga), hdmi = IFNULL(?,hdmi), adicionales = IFNULL(?,adicionales) WHERE nro_inv = ?",
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
        adicionales,
        params.id,
      ]
    );
    return NextResponse.json(result);
  } catch (error) {
    // console.log(error)
    return NextResponse.json({ error });
  }
}
