"use client";
import React, { useState } from "react";
import axios from "axios";
import { useRouter, useParams } from "next/navigation";

const InstrumentEditForm = ({ producto }) => {
  const router = useRouter();

  const [instrumento, setInstrumento] = useState({
    nro_inv: producto.nro_inv,
    cod_rec: producto.cod_rec,
    tipo: producto.tipo,
    descripcion: producto.descripcion,
    marca: producto.marca,
    modelo: producto.modelo,
    sn: producto.sn,
    ab_rango: producto.ab_rango,
    cod_manual: producto.cod_manual,
    espeficicaciones: producto.espeficicaciones,
    estado: producto.estado,
    ubicacion: producto.ubicacion,
    adicionales: producto.adicionales,
    fecha_ingreso: producto.fecha_ingreso,
  });

  const handleSubmit = async (e) => {
    e.preventDefault();
    try {
      const res = await axios.patch(
        "/api/instrumentos/" + producto.nro_inv,
        instrumento
      );
      alert("Instrumento modificado correctamente");
      router.push("/instrumentos");
    } catch (error) {
      alert("No se pudo modificar el instrumento");
    }
  };

  const handleChange = ({ target: { name, value } }) => {
    setInstrumento({ ...instrumento, [name]: value });
  };

  return (
    <>
      <div className="w-full flex justify-center">
        <form
          onSubmit={handleSubmit}
          className="bg-white w-2/5 shadow-md rounded px-8 py-6 my-4"
        >
          <div className="grid grid-cols-2 gap-4">
            <label htmlFor="nro_inv">Numero de inventario:</label>
            <input
              type="text"
              name="nro_inv"
              onChange={handleChange}
              className="shadow border rounded p-2"
              placeholder={producto.nro_inv}
            />
            <label htmlFor="cod_rec">Codigo de recurso: </label>
            <input
              type="text"
              name="cod_rec"
              onChange={handleChange}
              className="shadow border rounded p-2"
              placeholder={producto.cod_rec}
            />
            <label htmlFor="tipo">Tipo: </label>
            <input
              type="text"
              name="tipo"
              onChange={handleChange}
              className="shadow border rounded p-2"
              placeholder={producto.tipo}
            />
            <label htmlFor="descripcion">Descripcion: </label>
            <input
              type="text"
              name="descripcion"
              onChange={handleChange}
              className="shadow border rounded p-2"
              placeholder={producto.descripcion}
            />
            <label htmlFor="marca">Marca: </label>
            <input
              type="text"
              name="marca"
              onChange={handleChange}
              className="shadow border rounded p-2"
              placeholder={producto.marca}
            />
            <label htmlFor="modelo">Modelo: </label>
            <input
              type="text"
              name="modelo"
              onChange={handleChange}
              className="shadow border rounded p-2"
              placeholder={producto.modelo}
            />
            <label htmlFor="sn">SN: </label>
            <input
              type="text"
              name="sn"
              onChange={handleChange}
              className="shadow border rounded p-2"
              placeholder={producto.sn}
            />
            <label htmlFor="ab_rango">AB - Rango: </label>
            <input
              type="text"
              name="ab_rango"
              onChange={handleChange}
              className="shadow border rounded p-2"
              placeholder={producto.ab_rango}
            />
            <label htmlFor="cod_manual">Codigo de manual: </label>
            <input
              type="text"
              name="cod_manual"
              onChange={handleChange}
              className="shadow border rounded p-2"
              placeholder={producto.cod_manual}
            />
            <label htmlFor="especificaciones">Especificaciones: </label>
            <input
              type="text"
              name="especificaciones"
              onChange={handleChange}
              className="shadow border rounded p-2"
              placeholder={producto.espeficicaciones}
            />
            <label htmlFor="estado">Estado: </label>
            <input
              type="text"
              name="estado"
              onChange={handleChange}
              className="shadow border rounded p-2"
              placeholder={producto.estado}
            />
            <label htmlFor="ubicacion">Ubicacion: </label>
            <input
              type="text"
              name="ubicacion"
              onChange={handleChange}
              className="shadow border rounded p-2"
              placeholder={producto.ubicacion}
            />
            <label htmlFor="adicionales">Adicionales: </label>
            <input
              type="text"
              name="adicionales"
              onChange={handleChange}
              className="shadow border rounded p-2"
              placeholder={producto.adicionales}
            />
            <label htmlFor="fecha_ingreso">Fecha de ingreso: </label>
            <input
              type="text"
              name="fecha_ingreso"
              onChange={handleChange}
              className="shadow border rounded p-2"
              placeholder={producto.fecha_ingreso}
            />
          </div>
          <div className="flex justify-center">
            <button className="bg-yellow-500 hover:bg-yellow-700 mt-5 py-2 px-3 rounded-md font-bold text-white">
              Modificar
            </button>
          </div>
        </form>
      </div>
    </>
  );
};

export default InstrumentEditForm;
