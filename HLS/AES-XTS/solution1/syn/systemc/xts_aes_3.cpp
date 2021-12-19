#include "xts_aes.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void xts_aes::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst_n\" :  \"" << ap_rst_n.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"m_axi_data0_AWVALID\" :  \"" << m_axi_data0_AWVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_data0_AWREADY\" :  \"" << m_axi_data0_AWREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data0_AWADDR\" :  \"" << m_axi_data0_AWADDR.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data0_AWID\" :  \"" << m_axi_data0_AWID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data0_AWLEN\" :  \"" << m_axi_data0_AWLEN.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data0_AWSIZE\" :  \"" << m_axi_data0_AWSIZE.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data0_AWBURST\" :  \"" << m_axi_data0_AWBURST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data0_AWLOCK\" :  \"" << m_axi_data0_AWLOCK.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data0_AWCACHE\" :  \"" << m_axi_data0_AWCACHE.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data0_AWPROT\" :  \"" << m_axi_data0_AWPROT.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data0_AWQOS\" :  \"" << m_axi_data0_AWQOS.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data0_AWREGION\" :  \"" << m_axi_data0_AWREGION.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data0_AWUSER\" :  \"" << m_axi_data0_AWUSER.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data0_WVALID\" :  \"" << m_axi_data0_WVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_data0_WREADY\" :  \"" << m_axi_data0_WREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data0_WDATA\" :  \"" << m_axi_data0_WDATA.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data0_WSTRB\" :  \"" << m_axi_data0_WSTRB.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data0_WLAST\" :  \"" << m_axi_data0_WLAST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data0_WID\" :  \"" << m_axi_data0_WID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data0_WUSER\" :  \"" << m_axi_data0_WUSER.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data0_ARVALID\" :  \"" << m_axi_data0_ARVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_data0_ARREADY\" :  \"" << m_axi_data0_ARREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data0_ARADDR\" :  \"" << m_axi_data0_ARADDR.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data0_ARID\" :  \"" << m_axi_data0_ARID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data0_ARLEN\" :  \"" << m_axi_data0_ARLEN.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data0_ARSIZE\" :  \"" << m_axi_data0_ARSIZE.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data0_ARBURST\" :  \"" << m_axi_data0_ARBURST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data0_ARLOCK\" :  \"" << m_axi_data0_ARLOCK.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data0_ARCACHE\" :  \"" << m_axi_data0_ARCACHE.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data0_ARPROT\" :  \"" << m_axi_data0_ARPROT.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data0_ARQOS\" :  \"" << m_axi_data0_ARQOS.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data0_ARREGION\" :  \"" << m_axi_data0_ARREGION.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data0_ARUSER\" :  \"" << m_axi_data0_ARUSER.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_data0_RVALID\" :  \"" << m_axi_data0_RVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data0_RREADY\" :  \"" << m_axi_data0_RREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_data0_RDATA\" :  \"" << m_axi_data0_RDATA.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_data0_RLAST\" :  \"" << m_axi_data0_RLAST.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_data0_RID\" :  \"" << m_axi_data0_RID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_data0_RUSER\" :  \"" << m_axi_data0_RUSER.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_data0_RRESP\" :  \"" << m_axi_data0_RRESP.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_data0_BVALID\" :  \"" << m_axi_data0_BVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data0_BREADY\" :  \"" << m_axi_data0_BREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_data0_BRESP\" :  \"" << m_axi_data0_BRESP.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_data0_BID\" :  \"" << m_axi_data0_BID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_data0_BUSER\" :  \"" << m_axi_data0_BUSER.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data1_AWVALID\" :  \"" << m_axi_data1_AWVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_data1_AWREADY\" :  \"" << m_axi_data1_AWREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data1_AWADDR\" :  \"" << m_axi_data1_AWADDR.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data1_AWID\" :  \"" << m_axi_data1_AWID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data1_AWLEN\" :  \"" << m_axi_data1_AWLEN.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data1_AWSIZE\" :  \"" << m_axi_data1_AWSIZE.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data1_AWBURST\" :  \"" << m_axi_data1_AWBURST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data1_AWLOCK\" :  \"" << m_axi_data1_AWLOCK.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data1_AWCACHE\" :  \"" << m_axi_data1_AWCACHE.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data1_AWPROT\" :  \"" << m_axi_data1_AWPROT.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data1_AWQOS\" :  \"" << m_axi_data1_AWQOS.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data1_AWREGION\" :  \"" << m_axi_data1_AWREGION.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data1_AWUSER\" :  \"" << m_axi_data1_AWUSER.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data1_WVALID\" :  \"" << m_axi_data1_WVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_data1_WREADY\" :  \"" << m_axi_data1_WREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data1_WDATA\" :  \"" << m_axi_data1_WDATA.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data1_WSTRB\" :  \"" << m_axi_data1_WSTRB.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data1_WLAST\" :  \"" << m_axi_data1_WLAST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data1_WID\" :  \"" << m_axi_data1_WID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data1_WUSER\" :  \"" << m_axi_data1_WUSER.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data1_ARVALID\" :  \"" << m_axi_data1_ARVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_data1_ARREADY\" :  \"" << m_axi_data1_ARREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data1_ARADDR\" :  \"" << m_axi_data1_ARADDR.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data1_ARID\" :  \"" << m_axi_data1_ARID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data1_ARLEN\" :  \"" << m_axi_data1_ARLEN.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data1_ARSIZE\" :  \"" << m_axi_data1_ARSIZE.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data1_ARBURST\" :  \"" << m_axi_data1_ARBURST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data1_ARLOCK\" :  \"" << m_axi_data1_ARLOCK.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data1_ARCACHE\" :  \"" << m_axi_data1_ARCACHE.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data1_ARPROT\" :  \"" << m_axi_data1_ARPROT.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data1_ARQOS\" :  \"" << m_axi_data1_ARQOS.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data1_ARREGION\" :  \"" << m_axi_data1_ARREGION.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data1_ARUSER\" :  \"" << m_axi_data1_ARUSER.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_data1_RVALID\" :  \"" << m_axi_data1_RVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data1_RREADY\" :  \"" << m_axi_data1_RREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_data1_RDATA\" :  \"" << m_axi_data1_RDATA.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_data1_RLAST\" :  \"" << m_axi_data1_RLAST.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_data1_RID\" :  \"" << m_axi_data1_RID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_data1_RUSER\" :  \"" << m_axi_data1_RUSER.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_data1_RRESP\" :  \"" << m_axi_data1_RRESP.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_data1_BVALID\" :  \"" << m_axi_data1_BVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data1_BREADY\" :  \"" << m_axi_data1_BREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_data1_BRESP\" :  \"" << m_axi_data1_BRESP.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_data1_BID\" :  \"" << m_axi_data1_BID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_data1_BUSER\" :  \"" << m_axi_data1_BUSER.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data2_AWVALID\" :  \"" << m_axi_data2_AWVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_data2_AWREADY\" :  \"" << m_axi_data2_AWREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data2_AWADDR\" :  \"" << m_axi_data2_AWADDR.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data2_AWID\" :  \"" << m_axi_data2_AWID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data2_AWLEN\" :  \"" << m_axi_data2_AWLEN.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data2_AWSIZE\" :  \"" << m_axi_data2_AWSIZE.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data2_AWBURST\" :  \"" << m_axi_data2_AWBURST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data2_AWLOCK\" :  \"" << m_axi_data2_AWLOCK.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data2_AWCACHE\" :  \"" << m_axi_data2_AWCACHE.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data2_AWPROT\" :  \"" << m_axi_data2_AWPROT.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data2_AWQOS\" :  \"" << m_axi_data2_AWQOS.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data2_AWREGION\" :  \"" << m_axi_data2_AWREGION.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data2_AWUSER\" :  \"" << m_axi_data2_AWUSER.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data2_WVALID\" :  \"" << m_axi_data2_WVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_data2_WREADY\" :  \"" << m_axi_data2_WREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data2_WDATA\" :  \"" << m_axi_data2_WDATA.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data2_WSTRB\" :  \"" << m_axi_data2_WSTRB.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data2_WLAST\" :  \"" << m_axi_data2_WLAST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data2_WID\" :  \"" << m_axi_data2_WID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data2_WUSER\" :  \"" << m_axi_data2_WUSER.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data2_ARVALID\" :  \"" << m_axi_data2_ARVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_data2_ARREADY\" :  \"" << m_axi_data2_ARREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data2_ARADDR\" :  \"" << m_axi_data2_ARADDR.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data2_ARID\" :  \"" << m_axi_data2_ARID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data2_ARLEN\" :  \"" << m_axi_data2_ARLEN.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data2_ARSIZE\" :  \"" << m_axi_data2_ARSIZE.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data2_ARBURST\" :  \"" << m_axi_data2_ARBURST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data2_ARLOCK\" :  \"" << m_axi_data2_ARLOCK.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data2_ARCACHE\" :  \"" << m_axi_data2_ARCACHE.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data2_ARPROT\" :  \"" << m_axi_data2_ARPROT.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data2_ARQOS\" :  \"" << m_axi_data2_ARQOS.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data2_ARREGION\" :  \"" << m_axi_data2_ARREGION.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data2_ARUSER\" :  \"" << m_axi_data2_ARUSER.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_data2_RVALID\" :  \"" << m_axi_data2_RVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data2_RREADY\" :  \"" << m_axi_data2_RREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_data2_RDATA\" :  \"" << m_axi_data2_RDATA.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_data2_RLAST\" :  \"" << m_axi_data2_RLAST.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_data2_RID\" :  \"" << m_axi_data2_RID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_data2_RUSER\" :  \"" << m_axi_data2_RUSER.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_data2_RRESP\" :  \"" << m_axi_data2_RRESP.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_data2_BVALID\" :  \"" << m_axi_data2_BVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data2_BREADY\" :  \"" << m_axi_data2_BREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_data2_BRESP\" :  \"" << m_axi_data2_BRESP.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_data2_BID\" :  \"" << m_axi_data2_BID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_data2_BUSER\" :  \"" << m_axi_data2_BUSER.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data3_AWVALID\" :  \"" << m_axi_data3_AWVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_data3_AWREADY\" :  \"" << m_axi_data3_AWREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data3_AWADDR\" :  \"" << m_axi_data3_AWADDR.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data3_AWID\" :  \"" << m_axi_data3_AWID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data3_AWLEN\" :  \"" << m_axi_data3_AWLEN.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data3_AWSIZE\" :  \"" << m_axi_data3_AWSIZE.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data3_AWBURST\" :  \"" << m_axi_data3_AWBURST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data3_AWLOCK\" :  \"" << m_axi_data3_AWLOCK.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data3_AWCACHE\" :  \"" << m_axi_data3_AWCACHE.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data3_AWPROT\" :  \"" << m_axi_data3_AWPROT.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data3_AWQOS\" :  \"" << m_axi_data3_AWQOS.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data3_AWREGION\" :  \"" << m_axi_data3_AWREGION.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data3_AWUSER\" :  \"" << m_axi_data3_AWUSER.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data3_WVALID\" :  \"" << m_axi_data3_WVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_data3_WREADY\" :  \"" << m_axi_data3_WREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data3_WDATA\" :  \"" << m_axi_data3_WDATA.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data3_WSTRB\" :  \"" << m_axi_data3_WSTRB.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data3_WLAST\" :  \"" << m_axi_data3_WLAST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data3_WID\" :  \"" << m_axi_data3_WID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data3_WUSER\" :  \"" << m_axi_data3_WUSER.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data3_ARVALID\" :  \"" << m_axi_data3_ARVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_data3_ARREADY\" :  \"" << m_axi_data3_ARREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data3_ARADDR\" :  \"" << m_axi_data3_ARADDR.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data3_ARID\" :  \"" << m_axi_data3_ARID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data3_ARLEN\" :  \"" << m_axi_data3_ARLEN.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data3_ARSIZE\" :  \"" << m_axi_data3_ARSIZE.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data3_ARBURST\" :  \"" << m_axi_data3_ARBURST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data3_ARLOCK\" :  \"" << m_axi_data3_ARLOCK.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data3_ARCACHE\" :  \"" << m_axi_data3_ARCACHE.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data3_ARPROT\" :  \"" << m_axi_data3_ARPROT.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data3_ARQOS\" :  \"" << m_axi_data3_ARQOS.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data3_ARREGION\" :  \"" << m_axi_data3_ARREGION.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data3_ARUSER\" :  \"" << m_axi_data3_ARUSER.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_data3_RVALID\" :  \"" << m_axi_data3_RVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data3_RREADY\" :  \"" << m_axi_data3_RREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_data3_RDATA\" :  \"" << m_axi_data3_RDATA.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_data3_RLAST\" :  \"" << m_axi_data3_RLAST.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_data3_RID\" :  \"" << m_axi_data3_RID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_data3_RUSER\" :  \"" << m_axi_data3_RUSER.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_data3_RRESP\" :  \"" << m_axi_data3_RRESP.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_data3_BVALID\" :  \"" << m_axi_data3_BVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_data3_BREADY\" :  \"" << m_axi_data3_BREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_data3_BRESP\" :  \"" << m_axi_data3_BRESP.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_data3_BID\" :  \"" << m_axi_data3_BID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_data3_BUSER\" :  \"" << m_axi_data3_BUSER.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_ctrl_AWVALID\" :  \"" << s_axi_ctrl_AWVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_ctrl_AWREADY\" :  \"" << s_axi_ctrl_AWREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_ctrl_AWADDR\" :  \"" << s_axi_ctrl_AWADDR.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_ctrl_WVALID\" :  \"" << s_axi_ctrl_WVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_ctrl_WREADY\" :  \"" << s_axi_ctrl_WREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_ctrl_WDATA\" :  \"" << s_axi_ctrl_WDATA.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_ctrl_WSTRB\" :  \"" << s_axi_ctrl_WSTRB.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_ctrl_ARVALID\" :  \"" << s_axi_ctrl_ARVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_ctrl_ARREADY\" :  \"" << s_axi_ctrl_ARREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_ctrl_ARADDR\" :  \"" << s_axi_ctrl_ARADDR.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_ctrl_RVALID\" :  \"" << s_axi_ctrl_RVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_ctrl_RREADY\" :  \"" << s_axi_ctrl_RREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_ctrl_RDATA\" :  \"" << s_axi_ctrl_RDATA.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_ctrl_RRESP\" :  \"" << s_axi_ctrl_RRESP.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_ctrl_BVALID\" :  \"" << s_axi_ctrl_BVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_ctrl_BREADY\" :  \"" << s_axi_ctrl_BREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_ctrl_BRESP\" :  \"" << s_axi_ctrl_BRESP.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"interrupt\" :  \"" << interrupt.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

