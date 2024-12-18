﻿<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml" xmlns:state="http://panax.io/state" xmlns:session="http://panax.io/session">
	<xsl:param name="state:desarrollo">(xover.site.seed || '').replace(/^#/,'')</xsl:param>
	<xsl:param name="session:status"></xsl:param>
	<xsl:param name="session:user_login"></xsl:param>
	<xsl:template match="/">
		<div class="draggable" style=" width: 100px;
            height: 100vh;
            width: 100vw;
            position: absolute;
            top: 0;
            left: 0;
            cursor: grab;
            user-select: none;
            transition: transform 0.1s ease-out; ">
			<script type="text/javascript" defer="defer" src="/loteador/jquery.maphilight.js"></script>
			<script type="text/javascript" src="/loteador/mapselection.js">loteador.inicializar()</script>
			<style>
				<![CDATA[#Mapa .map {
	background: url('../proyectos/]]><xsl:value-of select="$state:desarrollo"/><![CDATA[/loteador.png');
	background-size: 100%;
	background-repeat: no-repeat;
	width: 100%;
}]]>
			</style>
			<script defer="">
				<![CDATA[ 
		draggableDiv = document.querySelector('.draggable');
        let isDragging = false;
        let startX, startY, initialX = 0, initialY = 0;
        let currentX = 0, currentY = 0;

        draggableDiv.addEventListener('mousedown', (e) => {
            e.preventDefault();
            isDragging = true;
            startX = e.clientX - currentX;
            startY = e.clientY - currentY;

            draggableDiv.style.cursor = 'grabbing';
            requestAnimationFrame(updatePosition);
        });

        document.addEventListener('mousemove', (e) => {
            if (isDragging) {
                currentX = e.clientX - startX;
                currentY = e.clientY - startY;
            }
        });

        document.addEventListener('mouseup', () => {
            isDragging = false;
            draggableDiv.style.cursor = 'grab';
        });

        function updatePosition() {
            if (isDragging) {
                draggableDiv.style.transform = `translate(${currentX}px, ${currentY}px)`;
                requestAnimationFrame(updatePosition);
            }
        }]]>
			</script>
			<img id="masterplan" src="../proyectos/{$state:desarrollo}/sembrado.png" orgwidth="4759" width="500" border="0" usemap="#map" class="map" />
			<map name="map">
				<area shape="poly" coords="666,1397,881,1419,848,1745,637,1721" alt="L1" target="adara_1" href="#pagar" />
				<area shape="poly" coords="886,1173,914,911,1195,941,1167,1202" alt="L2" target="adara_2" href="#pagar" />
				<area shape="poly" coords="849,1744,881,1419,1096,1440,1062,1763" alt="L3" target="adara_3" href="#pagar" />
				<area shape="poly" coords="1166,1203,1195,942,1478,971,1448,1232" alt="L4" target="adara_4" href="#pagar" />
				<area shape="poly" coords="1276,1787,1310,1462,1525,1484,1492,1809" alt="L5" target="adara_5" href="#pagar" />
				<area shape="poly" coords="1491,1809,1525,1484,1740,1506,1706,1830" alt="L7" target="adara_7" href="#pagar" />
				<area shape="poly" coords="1706,1830,1740,1506,1955,1528,1920,1852" alt="L9" target="adara_9" href="#pagar" />
				<area shape="poly" coords="1920,1852,1954,1529,2055,1539,2095,1553,2125,1576,2147,1599,2162,1626,2173,1646,2147,1876" alt="L10" target="adara_10" href="#pagar" />
				<area shape="poly" coords="1449,1232,1478,972,1760,1001,1731,1261" alt="L6" target="adara_6" href="#pagar" />
				<area shape="poly" coords="1731,1261,1760,1001,2041,1031,2012,1290" alt="L8" target="adara_8" href="#pagar" />
				<area shape="poly" coords="2042,1031,2069,775,1788,742,1760,1000" alt="L43" target="adara_43" href="#pagar" />
				<area shape="poly" coords="1760,1000,1788,742,1506,711,1477,971" alt="L45" target="adara_45" href="#pagar" />
				<area shape="poly" coords="1477,971,1506,711,1224,679,1194,941" alt="L47" target="adara_47" href="#pagar" />
				<area shape="poly" coords="1194,941,1224,679,943,648,914,911" alt="L49" target="adara_49" href="#pagar" />
				<area shape="poly" coords="1063,1766,1096,1440,1311,1462,1276,1787" target="adara_" href="#pagar" />
				<area shape="poly" coords="2497,893,2719,916,2679,1300,2458,1276" alt="L39" target="adara_39" href="#pagar" />
				<area shape="poly" coords="2457,1274,2422,1641,2451,1660,2476,1668,2611,1682,2650,1297" alt="L11" target="adara_11" href="#pagar" />
				<area shape="poly" coords="2650,1297,2611,1683,2803,1701,2841,1315" alt="L12" target="adara_12" href="#pagar" />
				<area shape="poly" coords="2841,1315,2803,1702,2995,1720,3033,1335" alt="L13" target="adara_13" href="#pagar" />
				<area shape="poly" coords="3033,1335,2995,1719,3186,1739,3225,1354" alt="L14" target="adara_14" href="&quot;" />
				<area shape="poly" coords="3225,1354,3186,1740,3377,1757,3416,1374" alt="L15" target="adara_15" href="#pagar" />
				<area shape="poly" coords="3415,1374,3378,1757,3570,1777,3608,1391" alt="L16" target="adara_16" href="#pagar" />
				<area shape="poly" coords="3608,1391,3569,1778,3761,1796,3799,1412" alt="L17" target="adara_17" href="#pagar" />
				<area shape="poly" coords="3799,1412,3760,1796,3952,1815,3991,1430" alt="L18" target="adara_18" href="#pagar" />
				<area shape="poly" coords="2680,1299,2717,916,2920,937,2881,1320" alt="L37" target="adara_37" href="#pagar" />
				<area shape="poly" coords="2881,1320,2920,937,3122,957,3083,1339" alt="L35" target="adara_35" href="#pagar" />
				<area shape="poly" coords="3083,1341,3121,957,3324,977,3286,1360" alt="L33" target="adara_33" href="#pagar" />
				<area shape="poly" coords="3286,1360,3324,978,3525,998,3486,1380" alt="L31" target="adara_31" href="#pagar" />
				<area shape="poly" coords="3486,1380,3524,997,3727,1019,3688,1400" alt="L29" target="adara_29" href="#pagar" />
				<area shape="poly" coords="3688,1399,3727,1019,3929,1038,3890,1421" alt="L27" target="adara_27" href="#pagar" />
				<area shape="poly" coords="285,548,384,14,779,58,743,381,710,377,604,611,367,587" alt="L53" target="adara_53" href="#pagar" />
				<area shape="poly" coords="745,382,779,58,993,82,957,405" alt="L52" target="adara_52" href="#pagar" />
				<area shape="poly" coords="957,405,993,82,1208,105,1171,428" alt="L51" target="adara_51" href="#pagar" />
				<area shape="poly" coords="1171,431,1208,105,1422,129,1386,452" alt="L50" target="adara_50" href="#pagar" />
				<area shape="poly" coords="1386,452,1422,129,1637,153,1601,475" alt="L48" target="adara_48" href="#pagar" />
				<area shape="poly" coords="1601,477,1637,153,1853,177,1816,498" alt="L46" target="adara_46" href="#pagar" />
				<area shape="poly" coords="1816,500,1852,177,2066,200,2030,523" alt="L44" target="adara_44" href="#pagar" />
				<area shape="poly" coords="2030,523,2065,201,2281,224,2243,561,2190,543,2151,537" alt="L42" target="adara_42" href="#pagar" />
				<area shape="poly" coords="2280,224,2482,247,2438,644,2398,631,2243,560" alt="L41" target="adara_41" href="#pagar" />
				<area shape="poly" coords="2439,644,2481,247,2685,270,2639,665" alt="L40" target="adara_40" href="#pagar" />
				<area shape="poly" coords="2639,665,2684,269,2884,291,2841,684" alt="L38" target="adara_38" href="#pagar" />
				<area shape="poly" coords="2841,685,2884,292,3086,313,3043,706" alt="L36" target="adara_36" href="#pagar" />
				<area shape="poly" coords="3043,706,3086,313,3289,336,3244,726" alt="L34" target="adara_34" href="#pagar" />
				<area shape="poly" coords="3244,726,3288,336,3490,358,3446,746" alt="L32" target="adara_32" href="#pagar" />
				<area shape="poly" coords="3446,746,3490,358,3692,381,3649,766" alt="L30" target="adara_30" href="#pagar" />
				<area shape="poly" coords="3649,766,3691,380,3873,400,3850,785" alt="L28" target="adara_28" href="#pagar" />
				<area shape="poly" coords="4033,420,4413,462,4448,639,4090,710" alt="L26" target="adara_26" href="#pagar" />
				<area shape="poly" coords="4090,710,4448,639,4487,838,4130,910" alt="L25" target="adara_25" href="#pagar" />
				<area shape="poly" coords="4130,910,4488,838,4528,1037,4170,1108" alt="L24" target="adara_24" href="#pagar" />
				<area shape="poly" coords="4170,1108,4528,1037,4567,1237,4208,1308" alt="L23" target="adara_23" href="#pagar" />
				<area shape="poly" coords="4208,1308,4568,1236,4607,1436,4248,1506" alt="L22" target="adara_22" href="#pagar" />
				<area shape="poly" coords="4248,1506,4607,1435,4647,1635,4288,1705" alt="L21" target="adara_21" href="#pagar" />
				<area shape="poly" coords="4288,1705,4646,1634,4694,1872,4328,1904" alt="L20" target="adara_20" href="#pagar" />
				<area shape="poly" coords="79,1661,183,1091,599,1137,645,1396,666,1396,633,1720" alt="Área de donación" target="adara_donacion" href="#pagar" />
				<area shape="poly" coords="2014,1292,2052,1295,2052,1313,2091,1321,2131,1331,2171,1343,2211,1365,2250,1391,2287,1421,2322,1463,2347,1499,2368,1537,2384,1574,2389,1592,2402,1618,2420,1641,2498,892,2389,881,2342,867,2268,836,2201,806,2151,785,2069,769" target="adara_ammenities" href="#pagar" />
			</map>

		</div>
	</xsl:template>
</xsl:stylesheet>