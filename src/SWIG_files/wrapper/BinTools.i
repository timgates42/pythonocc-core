/*
Copyright 2008-2020 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.
pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.
*/
%define BINTOOLSDOCSTRING
"BinTools module, see official documentation at
https://www.opencascade.com/doc/occt-7.4.0/refman/html/package_bintools.html"
%enddef
%module (package="OCC.Core", docstring=BINTOOLSDOCSTRING) BinTools


%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%include ../common/CommonIncludes.i
%include ../common/ExceptionCatcher.i
%include ../common/FunctionTransformers.i
%include ../common/Operators.i
%include ../common/OccHandle.i
%include ../common/IOStream.i


%{
#include<BinTools_module.hxx>

//Dependencies
#include<Standard_module.hxx>
#include<NCollection_module.hxx>
#include<TopoDS_module.hxx>
#include<Geom2d_module.hxx>
#include<Geom_module.hxx>
#include<TopLoc_module.hxx>
#include<TopAbs_module.hxx>
#include<Message_module.hxx>
#include<CDF_module.hxx>
#include<TColgp_module.hxx>
#include<TColStd_module.hxx>
#include<TCollection_module.hxx>
#include<Storage_module.hxx>
%};
%import Standard.i
%import NCollection.i
%import TopoDS.i
%import Geom2d.i
%import Geom.i
%import TopLoc.i
%import TopAbs.i

%pythoncode {
from enum import IntEnum
from OCC.Core.Exception import *
};

/* public enums */
/* end public enums declaration */

/* python proy classes for enums */
%pythoncode {
};
/* end python proxy for enums */

/* handles */
/* end handles declaration */

/* templates */
/* end templates declaration */

/* typedefs */
typedef BinTools_LocationSet * BinTools_LocationSetPtr;
/* end typedefs declaration */

/*****************
* class BinTools *
*****************/
%rename(bintools) BinTools;
class BinTools {
	public:
		/****************** GetBool ******************/
		/**** md5 signature: 790955f4f4ba6908f582aee44fb265dd ****/
		%feature("compactdefaultargs") GetBool;
		%feature("autodoc", "No available documentation.

Parameters
----------
IS: Standard_IStream

Returns
-------
theValue: bool
") GetBool;
		static Standard_IStream & GetBool(Standard_IStream &InValue, Standard_Boolean &OutValue);

		/****************** GetExtChar ******************/
		/**** md5 signature: 123b0c66c3051e9feb92d9bfbbb192e6 ****/
		%feature("compactdefaultargs") GetExtChar;
		%feature("autodoc", "No available documentation.

Parameters
----------
IS: Standard_IStream
theValue: Standard_ExtCharacter

Returns
-------
Standard_IStream
") GetExtChar;
		static Standard_IStream & GetExtChar(Standard_IStream &InValue, Standard_ExtCharacter & theValue);

		/****************** GetInteger ******************/
		/**** md5 signature: 651f0a33e9e7502671bc3ef42df123eb ****/
		%feature("compactdefaultargs") GetInteger;
		%feature("autodoc", "No available documentation.

Parameters
----------
IS: Standard_IStream

Returns
-------
theValue: int
") GetInteger;
		static Standard_IStream & GetInteger(Standard_IStream &InValue, Standard_Integer &OutValue);

		/****************** GetReal ******************/
		/**** md5 signature: 38bb080ad1790d03931bd0c0aa629b48 ****/
		%feature("compactdefaultargs") GetReal;
		%feature("autodoc", "No available documentation.

Parameters
----------
IS: Standard_IStream

Returns
-------
theValue: float
") GetReal;
		static Standard_IStream & GetReal(Standard_IStream &InValue, Standard_Real &OutValue);

		/****************** PutBool ******************/
		/**** md5 signature: 0afdd320ec549f8b3da2cea1881b2e46 ****/
		%feature("compactdefaultargs") PutBool;
		%feature("autodoc", "No available documentation.

Parameters
----------
theValue: bool

Returns
-------
OS: Standard_OStream
") PutBool;
		static Standard_OStream & PutBool(Standard_OStream &OutValue, const Standard_Boolean theValue);

		/****************** PutExtChar ******************/
		/**** md5 signature: 6f5f97a4001fb0c14520fc2b5b0888a6 ****/
		%feature("compactdefaultargs") PutExtChar;
		%feature("autodoc", "No available documentation.

Parameters
----------
theValue: Standard_ExtCharacter

Returns
-------
OS: Standard_OStream
") PutExtChar;
		static Standard_OStream & PutExtChar(Standard_OStream &OutValue, const Standard_ExtCharacter theValue);

		/****************** PutInteger ******************/
		/**** md5 signature: 9e70411996f2de65be7008dfb8c34a78 ****/
		%feature("compactdefaultargs") PutInteger;
		%feature("autodoc", "No available documentation.

Parameters
----------
theValue: int

Returns
-------
OS: Standard_OStream
") PutInteger;
		static Standard_OStream & PutInteger(Standard_OStream &OutValue, const Standard_Integer theValue);

		/****************** PutReal ******************/
		/**** md5 signature: ac54248d89f12e5ac4d4e960e080065d ****/
		%feature("compactdefaultargs") PutReal;
		%feature("autodoc", "No available documentation.

Parameters
----------
theValue: float

Returns
-------
OS: Standard_OStream
") PutReal;
		static Standard_OStream & PutReal(Standard_OStream &OutValue, const Standard_Real theValue);

		/****************** Read ******************/
		/**** md5 signature: 04776c9f875d43f0d752c83484bdaaa0 ****/
		%feature("compactdefaultargs") Read;
		%feature("autodoc", "Reads a shape from <thestream> and returns it in <theshape>.

Parameters
----------
theShape: TopoDS_Shape
theStream: Standard_IStream

Returns
-------
None
") Read;
		static void Read(TopoDS_Shape & theShape, Standard_IStream &InValue);

		/****************** Read ******************/
		/**** md5 signature: f0d3026b2788ff9320fd4df9010bd64b ****/
		%feature("compactdefaultargs") Read;
		%feature("autodoc", "Reads a shape from <thefile> and returns it in <theshape>.

Parameters
----------
theShape: TopoDS_Shape
theFile: char *

Returns
-------
bool
") Read;
		static Standard_Boolean Read(TopoDS_Shape & theShape, const char * theFile);

		/****************** Write ******************/
		/**** md5 signature: 42eb6d41fcc1eb368f7c413c2abf5644 ****/
		%feature("compactdefaultargs") Write;
		%feature("autodoc", "Writes <theshape> on <thestream> in binary format.

Parameters
----------
theShape: TopoDS_Shape

Returns
-------
theStream: Standard_OStream
") Write;
		static void Write(const TopoDS_Shape & theShape, Standard_OStream &OutValue);

		/****************** Write ******************/
		/**** md5 signature: 437b11c00a79e3ca0f54a0ec19eec209 ****/
		%feature("compactdefaultargs") Write;
		%feature("autodoc", "Writes <theshape> in <thefile>.

Parameters
----------
theShape: TopoDS_Shape
theFile: char *

Returns
-------
bool
") Write;
		static Standard_Boolean Write(const TopoDS_Shape & theShape, const char * theFile);

};


%extend BinTools {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/****************************
* class BinTools_Curve2dSet *
****************************/
class BinTools_Curve2dSet {
	public:
		/****************** BinTools_Curve2dSet ******************/
		/**** md5 signature: d70cda135813c59090ea3f4c48ff061f ****/
		%feature("compactdefaultargs") BinTools_Curve2dSet;
		%feature("autodoc", "Returns an empty set of curves.

Returns
-------
None
") BinTools_Curve2dSet;
		 BinTools_Curve2dSet();

		/****************** Add ******************/
		/**** md5 signature: 947264273ed6b5c72eac1f308b1f2487 ****/
		%feature("compactdefaultargs") Add;
		%feature("autodoc", "Incorporate a new curve in the set and returns its index.

Parameters
----------
C: Geom2d_Curve

Returns
-------
int
") Add;
		Standard_Integer Add(const opencascade::handle<Geom2d_Curve> & C);

		/****************** Clear ******************/
		/**** md5 signature: ae54be580b423a6eadbe062e0bdb44c2 ****/
		%feature("compactdefaultargs") Clear;
		%feature("autodoc", "Clears the content of the set.

Returns
-------
None
") Clear;
		void Clear();

		/****************** Curve2d ******************/
		/**** md5 signature: aca04b75893a006fca996d6d157d858d ****/
		%feature("compactdefaultargs") Curve2d;
		%feature("autodoc", "Returns the curve of index <i>.

Parameters
----------
I: int

Returns
-------
opencascade::handle<Geom2d_Curve>
") Curve2d;
		opencascade::handle<Geom2d_Curve> Curve2d(const Standard_Integer I);

		/****************** Index ******************/
		/**** md5 signature: e1559320ddf80ce0263d324c781a3407 ****/
		%feature("compactdefaultargs") Index;
		%feature("autodoc", "Returns the index of <l>.

Parameters
----------
C: Geom2d_Curve

Returns
-------
int
") Index;
		Standard_Integer Index(const opencascade::handle<Geom2d_Curve> & C);

		/****************** Read ******************/
		/**** md5 signature: e0ade46168fbfd205cb072426bbabac5 ****/
		%feature("compactdefaultargs") Read;
		%feature("autodoc", "Reads the content of me from the stream <is>. me is first cleared.

Parameters
----------
IS: Standard_IStream

Returns
-------
None
") Read;
		void Read(Standard_IStream &InValue);

		/****************** ReadCurve2d ******************/
		/**** md5 signature: 8e76149c6e11b24fea6111aef9de38d2 ****/
		%feature("compactdefaultargs") ReadCurve2d;
		%feature("autodoc", "Reads the curve from the stream. the curve is assumed to have been written with the write method.

Parameters
----------
IS: Standard_IStream
C: Geom2d_Curve

Returns
-------
Standard_IStream
") ReadCurve2d;
		static Standard_IStream & ReadCurve2d(Standard_IStream &InValue, opencascade::handle<Geom2d_Curve> & C);

		/****************** Write ******************/
		/**** md5 signature: 26d5c57dbc383da9144a6151592feb6a ****/
		%feature("compactdefaultargs") Write;
		%feature("autodoc", "Writes the content of me on the stream <os> in a format that can be read back by read.

Parameters
----------

Returns
-------
OS: Standard_OStream
") Write;
		void Write(Standard_OStream &OutValue);

		/****************** WriteCurve2d ******************/
		/**** md5 signature: d6643db7025151a5e591fa1cf67fdba2 ****/
		%feature("compactdefaultargs") WriteCurve2d;
		%feature("autodoc", "Dumps the curve on the binary stream, that can be read back.

Parameters
----------
C: Geom2d_Curve

Returns
-------
OS: Standard_OStream
") WriteCurve2d;
		static void WriteCurve2d(const opencascade::handle<Geom2d_Curve> & C, Standard_OStream &OutValue);

};


%extend BinTools_Curve2dSet {
	%pythoncode {
	__repr__ = _dumps_object

	@methodnotwrapped
	def Dump(self):
		pass
	}
};

/**************************
* class BinTools_CurveSet *
**************************/
class BinTools_CurveSet {
	public:
		/****************** BinTools_CurveSet ******************/
		/**** md5 signature: 704e116f502121bb0a6c7a57e0f9f8ac ****/
		%feature("compactdefaultargs") BinTools_CurveSet;
		%feature("autodoc", "Returns an empty set of curves.

Returns
-------
None
") BinTools_CurveSet;
		 BinTools_CurveSet();

		/****************** Add ******************/
		/**** md5 signature: 4548eacacd2a36c829559b37d6b57411 ****/
		%feature("compactdefaultargs") Add;
		%feature("autodoc", "Incorporate a new curve in the set and returns its index.

Parameters
----------
C: Geom_Curve

Returns
-------
int
") Add;
		Standard_Integer Add(const opencascade::handle<Geom_Curve> & C);

		/****************** Clear ******************/
		/**** md5 signature: ae54be580b423a6eadbe062e0bdb44c2 ****/
		%feature("compactdefaultargs") Clear;
		%feature("autodoc", "Clears the content of the set.

Returns
-------
None
") Clear;
		void Clear();

		/****************** Curve ******************/
		/**** md5 signature: 3509a433898cb7510761da8b37eedb3b ****/
		%feature("compactdefaultargs") Curve;
		%feature("autodoc", "Returns the curve of index <i>.

Parameters
----------
I: int

Returns
-------
opencascade::handle<Geom_Curve>
") Curve;
		opencascade::handle<Geom_Curve> Curve(const Standard_Integer I);

		/****************** Index ******************/
		/**** md5 signature: c53cbf4d0efdfb90843e67e9b32c5252 ****/
		%feature("compactdefaultargs") Index;
		%feature("autodoc", "Returns the index of <l>.

Parameters
----------
C: Geom_Curve

Returns
-------
int
") Index;
		Standard_Integer Index(const opencascade::handle<Geom_Curve> & C);

		/****************** Read ******************/
		/**** md5 signature: e0ade46168fbfd205cb072426bbabac5 ****/
		%feature("compactdefaultargs") Read;
		%feature("autodoc", "Reads the content of me from the stream <is>. me is first cleared.

Parameters
----------
IS: Standard_IStream

Returns
-------
None
") Read;
		void Read(Standard_IStream &InValue);

		/****************** ReadCurve ******************/
		/**** md5 signature: dd391fb5d956a43e1ec7bd591b8d99ee ****/
		%feature("compactdefaultargs") ReadCurve;
		%feature("autodoc", "Reads the curve from the stream. the curve is assumed to have been written with the write method.

Parameters
----------
IS: Standard_IStream
C: Geom_Curve

Returns
-------
Standard_IStream
") ReadCurve;
		static Standard_IStream & ReadCurve(Standard_IStream &InValue, opencascade::handle<Geom_Curve> & C);

		/****************** Write ******************/
		/**** md5 signature: 26d5c57dbc383da9144a6151592feb6a ****/
		%feature("compactdefaultargs") Write;
		%feature("autodoc", "Writes the content of me on the stream <os> in a format that can be read back by read.

Parameters
----------

Returns
-------
OS: Standard_OStream
") Write;
		void Write(Standard_OStream &OutValue);

		/****************** WriteCurve ******************/
		/**** md5 signature: 074fd9a5c75cb1d9e2c21e9844fb05c9 ****/
		%feature("compactdefaultargs") WriteCurve;
		%feature("autodoc", "Dumps the curve on the stream in binary format that can be read back.

Parameters
----------
C: Geom_Curve

Returns
-------
OS: Standard_OStream
") WriteCurve;
		static void WriteCurve(const opencascade::handle<Geom_Curve> & C, Standard_OStream &OutValue);

};


%extend BinTools_CurveSet {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/*****************************
* class BinTools_LocationSet *
*****************************/
class BinTools_LocationSet {
	public:
		/****************** BinTools_LocationSet ******************/
		/**** md5 signature: a107009cfc36014e539e33dde2461af7 ****/
		%feature("compactdefaultargs") BinTools_LocationSet;
		%feature("autodoc", "Returns an empty set of locations.

Returns
-------
None
") BinTools_LocationSet;
		 BinTools_LocationSet();

		/****************** Add ******************/
		/**** md5 signature: 6d3b7662960d74b2d6e66b85d46b59f7 ****/
		%feature("compactdefaultargs") Add;
		%feature("autodoc", "Incorporate a new location in the set and returns its index.

Parameters
----------
L: TopLoc_Location

Returns
-------
int
") Add;
		Standard_Integer Add(const TopLoc_Location & L);

		/****************** Clear ******************/
		/**** md5 signature: ae54be580b423a6eadbe062e0bdb44c2 ****/
		%feature("compactdefaultargs") Clear;
		%feature("autodoc", "Clears the content of the set.

Returns
-------
None
") Clear;
		void Clear();

		/****************** Index ******************/
		/**** md5 signature: fbb01960bb9b443c36d99f6e7b11f6c5 ****/
		%feature("compactdefaultargs") Index;
		%feature("autodoc", "Returns the index of <l>.

Parameters
----------
L: TopLoc_Location

Returns
-------
int
") Index;
		Standard_Integer Index(const TopLoc_Location & L);

		/****************** Location ******************/
		/**** md5 signature: dc46e30cfdcf3a3cf13e5f29298f5163 ****/
		%feature("compactdefaultargs") Location;
		%feature("autodoc", "Returns the location of index <i>.

Parameters
----------
I: int

Returns
-------
TopLoc_Location
") Location;
		const TopLoc_Location & Location(const Standard_Integer I);

		/****************** NbLocations ******************/
		/**** md5 signature: e6c134b8d9aa92e37488cc54961e88e4 ****/
		%feature("compactdefaultargs") NbLocations;
		%feature("autodoc", "Returns number of locations.

Returns
-------
int
") NbLocations;
		Standard_Integer NbLocations();

		/****************** Read ******************/
		/**** md5 signature: e0ade46168fbfd205cb072426bbabac5 ****/
		%feature("compactdefaultargs") Read;
		%feature("autodoc", "Reads the content of me from the stream <is>. me is first cleared.

Parameters
----------
IS: Standard_IStream

Returns
-------
None
") Read;
		void Read(Standard_IStream &InValue);

		/****************** Write ******************/
		/**** md5 signature: 26d5c57dbc383da9144a6151592feb6a ****/
		%feature("compactdefaultargs") Write;
		%feature("autodoc", "Writes the content of me on the stream <os> in a format that can be read back by read.

Parameters
----------

Returns
-------
OS: Standard_OStream
") Write;
		void Write(Standard_OStream &OutValue);

};


%extend BinTools_LocationSet {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/**************************
* class BinTools_ShapeSet *
**************************/
class BinTools_ShapeSet {
	public:
		/****************** BinTools_ShapeSet ******************/
		/**** md5 signature: b4728bcf578ee785de9669c46cc9e7de ****/
		%feature("compactdefaultargs") BinTools_ShapeSet;
		%feature("autodoc", "Builds an empty shapeset. parameter <iswithtriangles> is added for xml persistence.

Parameters
----------
isWithTriangles: bool,optional
	default value is Standard_False

Returns
-------
None
") BinTools_ShapeSet;
		 BinTools_ShapeSet(const Standard_Boolean isWithTriangles = Standard_False);

		/****************** Add ******************/
		/**** md5 signature: 53c72d7ee288afd721c7b0a7e7296012 ****/
		%feature("compactdefaultargs") Add;
		%feature("autodoc", "Stores <s> and its sub-shape. returns the index of <s>. the method addgeometry is called on each sub-shape.

Parameters
----------
S: TopoDS_Shape

Returns
-------
int
") Add;
		Standard_Integer Add(const TopoDS_Shape & S);

		/****************** AddGeometry ******************/
		/**** md5 signature: 0fd943cd475c8e07eb80f1f4508f536a ****/
		%feature("compactdefaultargs") AddGeometry;
		%feature("autodoc", "Stores the goemetry of <s>.

Parameters
----------
S: TopoDS_Shape

Returns
-------
None
") AddGeometry;
		virtual void AddGeometry(const TopoDS_Shape & S);

		/****************** AddShapes ******************/
		/**** md5 signature: e51de0c8f9d77467626b59e64779aeff ****/
		%feature("compactdefaultargs") AddShapes;
		%feature("autodoc", "Inserts the shape <s2> in the shape <s1>.

Parameters
----------
S1: TopoDS_Shape
S2: TopoDS_Shape

Returns
-------
None
") AddShapes;
		virtual void AddShapes(TopoDS_Shape & S1, const TopoDS_Shape & S2);

		/****************** ChangeLocations ******************/
		/**** md5 signature: 647c90bf8c4ec50f4f4adabd19dff9ef ****/
		%feature("compactdefaultargs") ChangeLocations;
		%feature("autodoc", "No available documentation.

Returns
-------
BinTools_LocationSet
") ChangeLocations;
		BinTools_LocationSet & ChangeLocations();

		/****************** Clear ******************/
		/**** md5 signature: 1badd2d119b64dbdb177834e510c3af9 ****/
		%feature("compactdefaultargs") Clear;
		%feature("autodoc", "Clears the content of the set.

Returns
-------
None
") Clear;
		virtual void Clear();

		/****************** FormatNb ******************/
		/**** md5 signature: 4ba7a37f990f272738aa2003a22fc1da ****/
		%feature("compactdefaultargs") FormatNb;
		%feature("autodoc", "Two formats available for the moment: first: does not write curveonsurface uv points into the file on reading calls check() method. second: stores curveonsurface uv points. on reading format is recognized from version string.

Returns
-------
int
") FormatNb;
		Standard_Integer FormatNb();

		/****************** Index ******************/
		/**** md5 signature: 9e94bb6d7b4221be4165f8639cd27d92 ****/
		%feature("compactdefaultargs") Index;
		%feature("autodoc", "Returns the index of <s>.

Parameters
----------
S: TopoDS_Shape

Returns
-------
int
") Index;
		Standard_Integer Index(const TopoDS_Shape & S);

		/****************** IsWithTriangles ******************/
		/**** md5 signature: 2adacf1f8e5d4c926108b4db84751e9a ****/
		%feature("compactdefaultargs") IsWithTriangles;
		%feature("autodoc", "Return true if shape should be stored with triangles.

Returns
-------
bool
") IsWithTriangles;
		Standard_Boolean IsWithTriangles();

		/****************** Locations ******************/
		/**** md5 signature: 1891bed2b7331683f81d8635ed2a6f3e ****/
		%feature("compactdefaultargs") Locations;
		%feature("autodoc", "No available documentation.

Returns
-------
BinTools_LocationSet
") Locations;
		const BinTools_LocationSet & Locations();

		/****************** NbShapes ******************/
		/**** md5 signature: ea90d1514db96ad18becf0e04a33abf6 ****/
		%feature("compactdefaultargs") NbShapes;
		%feature("autodoc", "Returns number of shapes read from file.

Returns
-------
int
") NbShapes;
		Standard_Integer NbShapes();

		/****************** Read ******************/
		/**** md5 signature: be178169588964a2de2c9f09faf2c4b5 ****/
		%feature("compactdefaultargs") Read;
		%feature("autodoc", "Reads the content of me from the binary stream <is>. me is first cleared. //! reads the locations. //! reads the geometry calling readgeometry. //! reads the shapes. for each shape reads the type. calls readgeometry(t,s). reads the flag, the subshapes.

Parameters
----------
IS: Standard_IStream

Returns
-------
None
") Read;
		virtual void Read(Standard_IStream &InValue);

		/****************** Read ******************/
		/**** md5 signature: 96fe37731b3efbbaef299875d724b057 ****/
		%feature("compactdefaultargs") Read;
		%feature("autodoc", "Reads from <is> a shape and returns it in s. <nbshapes> is the number of tshapes in the set.

Parameters
----------
S: TopoDS_Shape
IS: Standard_IStream
NbShapes: int

Returns
-------
None
") Read;
		virtual void Read(TopoDS_Shape & S, Standard_IStream &InValue, const Standard_Integer NbShapes);

		/****************** ReadGeometry ******************/
		/**** md5 signature: 071626988705cdd0ce6fd667b570a836 ****/
		%feature("compactdefaultargs") ReadGeometry;
		%feature("autodoc", "Reads the geometry of me from the stream <is>.

Parameters
----------
IS: Standard_IStream

Returns
-------
None
") ReadGeometry;
		virtual void ReadGeometry(Standard_IStream &InValue);

		/****************** ReadGeometry ******************/
		/**** md5 signature: 4e371a9743f73b6a83ec48df91308b56 ****/
		%feature("compactdefaultargs") ReadGeometry;
		%feature("autodoc", "Reads the geometry of a shape of type <t> from the stream <is> and returns it in <s>.

Parameters
----------
T: TopAbs_ShapeEnum
IS: Standard_IStream
S: TopoDS_Shape

Returns
-------
None
") ReadGeometry;
		virtual void ReadGeometry(const TopAbs_ShapeEnum T, Standard_IStream &InValue, TopoDS_Shape & S);

		/****************** ReadPolygon3D ******************/
		/**** md5 signature: ed59fe78b6d605ad419a2a44401c07d2 ****/
		%feature("compactdefaultargs") ReadPolygon3D;
		%feature("autodoc", "Reads the 3d polygons of me from the stream <is>.

Parameters
----------
IS: Standard_IStream

Returns
-------
None
") ReadPolygon3D;
		void ReadPolygon3D(Standard_IStream &InValue);

		/****************** ReadPolygonOnTriangulation ******************/
		/**** md5 signature: 82b9cdb3ce24b84cdf91eebebdb541fa ****/
		%feature("compactdefaultargs") ReadPolygonOnTriangulation;
		%feature("autodoc", "Reads the polygons on triangulation of me from the stream <is>.

Parameters
----------
IS: Standard_IStream

Returns
-------
None
") ReadPolygonOnTriangulation;
		void ReadPolygonOnTriangulation(Standard_IStream &InValue);

		/****************** ReadTriangulation ******************/
		/**** md5 signature: 719dbb8f8b53d1cd44b4ffc33a2910e2 ****/
		%feature("compactdefaultargs") ReadTriangulation;
		%feature("autodoc", "Reads the triangulation of me from the stream <is>.

Parameters
----------
IS: Standard_IStream

Returns
-------
None
") ReadTriangulation;
		void ReadTriangulation(Standard_IStream &InValue);

		/****************** SetFormatNb ******************/
		/**** md5 signature: efa61c5f0aa586c699f53e1139cd95f9 ****/
		%feature("compactdefaultargs") SetFormatNb;
		%feature("autodoc", "No available documentation.

Parameters
----------
theFormatNb: int

Returns
-------
None
") SetFormatNb;
		void SetFormatNb(const Standard_Integer theFormatNb);

		/****************** SetWithTriangles ******************/
		/**** md5 signature: 628353c6dd7e40cd426fe07d7dbdc4c9 ****/
		%feature("compactdefaultargs") SetWithTriangles;
		%feature("autodoc", "Define if shape will be stored with triangles. ignored (always written) if face defines only triangulation (no surface).

Parameters
----------
isWithTriangles: bool

Returns
-------
None
") SetWithTriangles;
		void SetWithTriangles(const Standard_Boolean isWithTriangles);

		/****************** Shape ******************/
		/**** md5 signature: 243b850f6d21a0fba84095c942dbd917 ****/
		%feature("compactdefaultargs") Shape;
		%feature("autodoc", "Returns the sub-shape of index <i>.

Parameters
----------
I: int

Returns
-------
TopoDS_Shape
") Shape;
		const TopoDS_Shape Shape(const Standard_Integer I);

		/****************** Write ******************/
		/**** md5 signature: 5bb9aeb491e3a70cdf3fc0cc2d24c606 ****/
		%feature("compactdefaultargs") Write;
		%feature("autodoc", "Writes the content of me on the stream <os> in binary format that can be read back by read. //! writes the locations. //! writes the geometry calling writegeometry. //! dumps the shapes from last to first. for each shape : write the type. calls writegeometry(s). write the flags, the subshapes.

Parameters
----------

Returns
-------
OS: Standard_OStream
") Write;
		virtual void Write(Standard_OStream &OutValue);

		/****************** Write ******************/
		/**** md5 signature: 4dee654e63549bd15e408433814ece5a ****/
		%feature("compactdefaultargs") Write;
		%feature("autodoc", "Writes on <os> the shape <s>. writes the orientation, the index of the tshape and the index of the location.

Parameters
----------
S: TopoDS_Shape

Returns
-------
OS: Standard_OStream
") Write;
		virtual void Write(const TopoDS_Shape & S, Standard_OStream &OutValue);

		/****************** WriteGeometry ******************/
		/**** md5 signature: e1c3de1bde69181c4bab904488b6d646 ****/
		%feature("compactdefaultargs") WriteGeometry;
		%feature("autodoc", "Writes the geometry of me on the stream <os> in a binary format that can be read back by read.

Parameters
----------

Returns
-------
OS: Standard_OStream
") WriteGeometry;
		virtual void WriteGeometry(Standard_OStream &OutValue);

		/****************** WriteGeometry ******************/
		/**** md5 signature: 122b2c21a82fbea7b7f8cfce352176e9 ****/
		%feature("compactdefaultargs") WriteGeometry;
		%feature("autodoc", "Writes the geometry of <s> on the stream <os> in a binary format that can be read back by read.

Parameters
----------
S: TopoDS_Shape

Returns
-------
OS: Standard_OStream
") WriteGeometry;
		virtual void WriteGeometry(const TopoDS_Shape & S, Standard_OStream &OutValue);

		/****************** WritePolygon3D ******************/
		/**** md5 signature: afe77741a5cb0ccf4671bb178de8f6eb ****/
		%feature("compactdefaultargs") WritePolygon3D;
		%feature("autodoc", "Writes the 3d polygons on the stream <os> in a format that can be read back by read.

Parameters
----------

Returns
-------
OS: Standard_OStream
") WritePolygon3D;
		void WritePolygon3D(Standard_OStream &OutValue);

		/****************** WritePolygonOnTriangulation ******************/
		/**** md5 signature: b42f3f07a40803077d4f82d9859b266d ****/
		%feature("compactdefaultargs") WritePolygonOnTriangulation;
		%feature("autodoc", "Writes the polygons on triangulation on the stream <os> in a format that can be read back by read.

Parameters
----------

Returns
-------
OS: Standard_OStream
") WritePolygonOnTriangulation;
		void WritePolygonOnTriangulation(Standard_OStream &OutValue);

		/****************** WriteTriangulation ******************/
		/**** md5 signature: 45e49c99cde7b1878176d0765d139de9 ****/
		%feature("compactdefaultargs") WriteTriangulation;
		%feature("autodoc", "Writes the triangulation on the stream <os> in a format that can be read back by read.

Parameters
----------

Returns
-------
OS: Standard_OStream
") WriteTriangulation;
		void WriteTriangulation(Standard_OStream &OutValue);

};


%extend BinTools_ShapeSet {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/****************************
* class BinTools_SurfaceSet *
****************************/
class BinTools_SurfaceSet {
	public:
		/****************** BinTools_SurfaceSet ******************/
		/**** md5 signature: ea04fcb2e657ae6371aebb78e4178d8d ****/
		%feature("compactdefaultargs") BinTools_SurfaceSet;
		%feature("autodoc", "Returns an empty set of surfaces.

Returns
-------
None
") BinTools_SurfaceSet;
		 BinTools_SurfaceSet();

		/****************** Add ******************/
		/**** md5 signature: 6108c9acf8995214a7cb8b8e5a0b937c ****/
		%feature("compactdefaultargs") Add;
		%feature("autodoc", "Incorporate a new surface in the set and returns its index.

Parameters
----------
S: Geom_Surface

Returns
-------
int
") Add;
		Standard_Integer Add(const opencascade::handle<Geom_Surface> & S);

		/****************** Clear ******************/
		/**** md5 signature: ae54be580b423a6eadbe062e0bdb44c2 ****/
		%feature("compactdefaultargs") Clear;
		%feature("autodoc", "Clears the content of the set.

Returns
-------
None
") Clear;
		void Clear();

		/****************** Index ******************/
		/**** md5 signature: 7fc50802d17ebd7c660284e6560fb7f6 ****/
		%feature("compactdefaultargs") Index;
		%feature("autodoc", "Returns the index of <l>.

Parameters
----------
S: Geom_Surface

Returns
-------
int
") Index;
		Standard_Integer Index(const opencascade::handle<Geom_Surface> & S);

		/****************** Read ******************/
		/**** md5 signature: e0ade46168fbfd205cb072426bbabac5 ****/
		%feature("compactdefaultargs") Read;
		%feature("autodoc", "Reads the content of me from the stream <is>. me is first cleared.

Parameters
----------
IS: Standard_IStream

Returns
-------
None
") Read;
		void Read(Standard_IStream &InValue);

		/****************** ReadSurface ******************/
		/**** md5 signature: aadfa21c3ae4baf4c6a6f03347b99a89 ****/
		%feature("compactdefaultargs") ReadSurface;
		%feature("autodoc", "Reads the surface from the stream. the surface is assumed to have been written with the write method.

Parameters
----------
IS: Standard_IStream
S: Geom_Surface

Returns
-------
Standard_IStream
") ReadSurface;
		static Standard_IStream & ReadSurface(Standard_IStream &InValue, opencascade::handle<Geom_Surface> & S);

		/****************** Surface ******************/
		/**** md5 signature: f08a9f2a886e0a3933ae15a38f9b8dda ****/
		%feature("compactdefaultargs") Surface;
		%feature("autodoc", "Returns the surface of index <i>.

Parameters
----------
I: int

Returns
-------
opencascade::handle<Geom_Surface>
") Surface;
		opencascade::handle<Geom_Surface> Surface(const Standard_Integer I);

		/****************** Write ******************/
		/**** md5 signature: 26d5c57dbc383da9144a6151592feb6a ****/
		%feature("compactdefaultargs") Write;
		%feature("autodoc", "Writes the content of me on the stream <os> in binary format that can be read back by read.

Parameters
----------

Returns
-------
OS: Standard_OStream
") Write;
		void Write(Standard_OStream &OutValue);

		/****************** WriteSurface ******************/
		/**** md5 signature: d645c674fed0f1be122422d21f98561d ****/
		%feature("compactdefaultargs") WriteSurface;
		%feature("autodoc", "Dumps the surface on the stream in binary format that can be read back.

Parameters
----------
S: Geom_Surface

Returns
-------
OS: Standard_OStream
") WriteSurface;
		static void WriteSurface(const opencascade::handle<Geom_Surface> & S, Standard_OStream &OutValue);

};


%extend BinTools_SurfaceSet {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/* harray1 classes */
/* harray2 classes */
/* hsequence classes */
/* class aliases */
%pythoncode {
}
