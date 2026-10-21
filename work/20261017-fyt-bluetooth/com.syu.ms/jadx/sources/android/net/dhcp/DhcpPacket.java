package android.net.dhcp;

import android.net.ProxyProperties;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
abstract class DhcpPacket {
    public static final byte CLIENT_ID_ETHER = 1;
    public static final byte DHCP_BOOTREPLY = 2;
    public static final byte DHCP_BOOTREQUEST = 1;
    public static final byte DHCP_BROADCAST_ADDRESS = 28;
    public static final short DHCP_CLIENT = 68;
    public static final byte DHCP_CLIENT_IDENTIFIER = 61;
    public static final byte DHCP_DNS_SERVER = 6;
    public static final byte DHCP_DOMAIN_NAME = 15;
    public static final byte DHCP_HOST_NAME = 12;
    public static final byte DHCP_LEASE_TIME = 51;
    public static final byte DHCP_MESSAGE = 56;
    public static final byte DHCP_MESSAGE_TYPE = 53;
    public static final byte DHCP_MESSAGE_TYPE_ACK = 5;
    public static final byte DHCP_MESSAGE_TYPE_DECLINE = 4;
    public static final byte DHCP_MESSAGE_TYPE_DISCOVER = 1;
    public static final byte DHCP_MESSAGE_TYPE_INFORM = 8;
    public static final byte DHCP_MESSAGE_TYPE_NAK = 6;
    public static final byte DHCP_MESSAGE_TYPE_OFFER = 2;
    public static final byte DHCP_MESSAGE_TYPE_REQUEST = 3;
    public static final byte DHCP_PARAMETER_LIST = 55;
    public static final byte DHCP_RENEWAL_TIME = 58;
    public static final byte DHCP_REQUESTED_IP = 50;
    public static final byte DHCP_ROUTER = 3;
    public static final short DHCP_SERVER = 67;
    public static final byte DHCP_SERVER_IDENTIFIER = 54;
    public static final byte DHCP_SUBNET_MASK = 1;
    public static final byte DHCP_VENDOR_CLASS_ID = 60;
    public static final int ENCAP_BOOTP = 2;
    public static final int ENCAP_L2 = 0;
    public static final int ENCAP_L3 = 1;
    private static final short IP_FLAGS_OFFSET = 16384;
    private static final byte IP_TOS_LOWDELAY = 16;
    private static final byte IP_TTL = 64;
    private static final byte IP_TYPE_UDP = 17;
    private static final byte IP_VERSION_HEADER_LEN = 69;
    public static final int MAX_LENGTH = 1500;
    public static final String TAG = "DhcpPacket";
    public boolean mBroadcast;
    public InetAddress mBroadcastAddress;
    public final InetAddress mClientIp;
    public final byte[] mClientMac;
    public List<InetAddress> mDnsServers;
    public String mDomainName;
    public InetAddress mGateway;
    public String mHostName;
    public Integer mLeaseTime;
    public String mMessage;
    private final InetAddress mNextIp;
    private final InetAddress mRelayIp;
    public InetAddress mRequestedIp;
    public byte[] mRequestedParams;
    public InetAddress mServerIdentifier;
    public InetAddress mSubnetMask;
    public final int mTransId;
    public final InetAddress mYourIp;

    public DhcpPacket(int i2, InetAddress inetAddress, InetAddress inetAddress2, InetAddress inetAddress3, InetAddress inetAddress4, byte[] bArr, boolean z2) {
        this.mTransId = i2;
        this.mClientIp = inetAddress;
        this.mYourIp = inetAddress2;
        this.mNextIp = inetAddress3;
        this.mRelayIp = inetAddress4;
        this.mClientMac = bArr;
        this.mBroadcast = z2;
    }

    public static ByteBuffer buildAckPacket(int i2, int i3, boolean z2, InetAddress inetAddress, InetAddress inetAddress2, byte[] bArr, Integer num, InetAddress inetAddress3, InetAddress inetAddress4, InetAddress inetAddress5, List<InetAddress> list, InetAddress inetAddress6, String str) {
        DhcpAckPacket dhcpAckPacket = new DhcpAckPacket(i3, z2, inetAddress, inetAddress2, bArr);
        dhcpAckPacket.mGateway = inetAddress5;
        dhcpAckPacket.mDnsServers = list;
        dhcpAckPacket.mLeaseTime = num;
        dhcpAckPacket.mDomainName = str;
        dhcpAckPacket.mSubnetMask = inetAddress3;
        dhcpAckPacket.mServerIdentifier = inetAddress6;
        dhcpAckPacket.mBroadcastAddress = inetAddress4;
        return dhcpAckPacket.buildPacket(i2, (short) 68, (short) 67);
    }

    public static ByteBuffer buildDiscoverPacket(int i2, int i3, byte[] bArr, boolean z2, byte[] bArr2) {
        DhcpDiscoverPacket dhcpDiscoverPacket = new DhcpDiscoverPacket(i3, bArr, z2);
        dhcpDiscoverPacket.mRequestedParams = bArr2;
        return dhcpDiscoverPacket.buildPacket(i2, (short) 67, (short) 68);
    }

    public static ByteBuffer buildNakPacket(int i2, int i3, InetAddress inetAddress, InetAddress inetAddress2, byte[] bArr) {
        DhcpNakPacket dhcpNakPacket = new DhcpNakPacket(i3, inetAddress2, inetAddress, inetAddress, inetAddress, bArr);
        dhcpNakPacket.mMessage = "requested address not available";
        dhcpNakPacket.mRequestedIp = inetAddress2;
        return dhcpNakPacket.buildPacket(i2, (short) 68, (short) 67);
    }

    public static ByteBuffer buildOfferPacket(int i2, int i3, boolean z2, InetAddress inetAddress, InetAddress inetAddress2, byte[] bArr, Integer num, InetAddress inetAddress3, InetAddress inetAddress4, InetAddress inetAddress5, List<InetAddress> list, InetAddress inetAddress6, String str) {
        DhcpOfferPacket dhcpOfferPacket = new DhcpOfferPacket(i3, z2, inetAddress, inetAddress2, bArr);
        dhcpOfferPacket.mGateway = inetAddress5;
        dhcpOfferPacket.mDnsServers = list;
        dhcpOfferPacket.mLeaseTime = num;
        dhcpOfferPacket.mDomainName = str;
        dhcpOfferPacket.mServerIdentifier = inetAddress6;
        dhcpOfferPacket.mSubnetMask = inetAddress3;
        dhcpOfferPacket.mBroadcastAddress = inetAddress4;
        return dhcpOfferPacket.buildPacket(i2, (short) 68, (short) 67);
    }

    public static ByteBuffer buildRequestPacket(int i2, int i3, InetAddress inetAddress, boolean z2, byte[] bArr, InetAddress inetAddress2, InetAddress inetAddress3, byte[] bArr2, String str) {
        DhcpRequestPacket dhcpRequestPacket = new DhcpRequestPacket(i3, inetAddress, bArr, z2);
        dhcpRequestPacket.mRequestedIp = inetAddress2;
        dhcpRequestPacket.mServerIdentifier = inetAddress3;
        dhcpRequestPacket.mHostName = str;
        dhcpRequestPacket.mRequestedParams = bArr2;
        return dhcpRequestPacket.buildPacket(i2, (short) 67, (short) 68);
    }

    private int checksum(ByteBuffer byteBuffer, int i2, int i3, int i4) {
        int iPosition = byteBuffer.position();
        byteBuffer.position(i3);
        ShortBuffer shortBufferAsShortBuffer = byteBuffer.asShortBuffer();
        byteBuffer.position(iPosition);
        int i5 = (i4 - i3) / 2;
        short[] sArr = new short[i5];
        shortBufferAsShortBuffer.get(sArr);
        for (int i6 = 0; i6 < i5; i6++) {
            i2 += intAbs(sArr[i6]);
        }
        int i7 = i3 + (i5 * 2);
        if (i4 != i7) {
            short s2 = byteBuffer.get(i7);
            if (s2 < 0) {
                s2 = (short) (s2 + 256);
            }
            i2 += s2 * 256;
        }
        int i8 = ((i2 >> 16) & 65535) + (i2 & 65535);
        return intAbs((short) (~((i8 + ((i8 >> 16) & 65535)) & 65535)));
    }

    /* JADX WARN: Code duplicated, block: B:103:0x0194 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:105:0x0196 A[SYNTHETIC] */
    public static DhcpPacket decodeFullPacket(ByteBuffer byteBuffer, int i2) {
        InetAddress inetAddress;
        DhcpPacket dhcpDiscoverPacket;
        int i3;
        ArrayList arrayList = new ArrayList();
        byteBuffer.order(ByteOrder.BIG_ENDIAN);
        if (i2 == 0) {
            byteBuffer.get(new byte[6]);
            byteBuffer.get(new byte[6]);
            if (byteBuffer.getShort() != 2048) {
                return null;
            }
        }
        if (i2 == 0 || i2 == 1) {
            byteBuffer.get();
            byteBuffer.get();
            byteBuffer.getShort();
            byteBuffer.getShort();
            byteBuffer.get();
            byteBuffer.get();
            byteBuffer.get();
            byte b2 = byteBuffer.get();
            byteBuffer.getShort();
            InetAddress ipAddress = readIpAddress(byteBuffer);
            readIpAddress(byteBuffer);
            if (b2 != 17) {
                return null;
            }
            short s2 = byteBuffer.getShort();
            byteBuffer.getShort();
            byteBuffer.getShort();
            byteBuffer.getShort();
            if (s2 != 67 && s2 != 68) {
                return null;
            }
            inetAddress = ipAddress;
        } else {
            inetAddress = null;
        }
        byteBuffer.get();
        byteBuffer.get();
        int i4 = byteBuffer.get();
        byteBuffer.get();
        int i5 = byteBuffer.getInt();
        byteBuffer.getShort();
        boolean z2 = (byteBuffer.getShort() & Short.MIN_VALUE) != 0;
        byte[] bArr = new byte[4];
        try {
            byteBuffer.get(bArr);
            InetAddress byAddress = InetAddress.getByAddress(bArr);
            byteBuffer.get(bArr);
            InetAddress byAddress2 = InetAddress.getByAddress(bArr);
            byteBuffer.get(bArr);
            InetAddress byAddress3 = InetAddress.getByAddress(bArr);
            byteBuffer.get(bArr);
            InetAddress byAddress4 = InetAddress.getByAddress(bArr);
            byte[] bArr2 = new byte[i4];
            byteBuffer.get(bArr2);
            byteBuffer.position(byteBuffer.position() + (16 - i4) + 64 + 128);
            if (byteBuffer.getInt() != 1669485411) {
                return null;
            }
            byte b3 = -1;
            byte b4 = -1;
            InetAddress ipAddress2 = null;
            String asciiString = null;
            InetAddress ipAddress3 = null;
            String asciiString2 = null;
            Integer numValueOf = null;
            String asciiString3 = null;
            InetAddress ipAddress4 = null;
            byte[] bArr3 = null;
            InetAddress ipAddress5 = null;
            InetAddress ipAddress6 = null;
            boolean z3 = true;
            while (byteBuffer.position() < byteBuffer.limit() && z3) {
                byte b5 = byteBuffer.get();
                if (b5 == b3) {
                    z3 = false;
                } else {
                    int i6 = byteBuffer.get();
                    if (b5 == 1) {
                        ipAddress6 = readIpAddress(byteBuffer);
                    } else if (b5 != 3) {
                        if (b5 != 6) {
                            if (b5 == 12) {
                                asciiString2 = readAsciiString(byteBuffer, i6);
                            } else if (b5 == 15) {
                                asciiString = readAsciiString(byteBuffer, i6);
                            } else if (b5 == 28) {
                                ipAddress2 = readIpAddress(byteBuffer);
                            } else if (b5 == 50) {
                                ipAddress4 = readIpAddress(byteBuffer);
                            } else if (b5 == 51) {
                                numValueOf = Integer.valueOf(byteBuffer.getInt());
                            } else if (b5 == 60) {
                                readAsciiString(byteBuffer, i6);
                            } else if (b5 != 61) {
                                switch (b5) {
                                    case 53:
                                        b4 = byteBuffer.get();
                                        i3 = 1;
                                        break;
                                    case 54:
                                        ipAddress5 = readIpAddress(byteBuffer);
                                        break;
                                    case 55:
                                        byte[] bArr4 = new byte[i6];
                                        byteBuffer.get(bArr4);
                                        bArr3 = bArr4;
                                        break;
                                    case 56:
                                        asciiString3 = readAsciiString(byteBuffer, i6);
                                        break;
                                    default:
                                        i3 = 0;
                                        for (int i7 = 0; i7 < i6; i7++) {
                                            i3++;
                                            byteBuffer.get();
                                        }
                                        break;
                                }
                            } else {
                                byteBuffer.get(new byte[i6]);
                            }
                            i3 = i6;
                        } else {
                            i3 = 0;
                            while (i3 < i6) {
                                arrayList.add(readIpAddress(byteBuffer));
                                i3 += 4;
                            }
                        }
                        if (i3 != i6) {
                            return null;
                        }
                    } else {
                        ipAddress3 = readIpAddress(byteBuffer);
                    }
                    i3 = 4;
                    if (i3 != i6) {
                        return null;
                    }
                }
                b3 = -1;
            }
            switch (b4) {
                case -1:
                    return null;
                case 0:
                case 7:
                default:
                    System.out.println("Unimplemented type: " + ((int) b4));
                    return null;
                case 1:
                    dhcpDiscoverPacket = new DhcpDiscoverPacket(i5, bArr2, z2);
                    break;
                case 2:
                    dhcpDiscoverPacket = new DhcpOfferPacket(i5, z2, inetAddress, byAddress2, bArr2);
                    break;
                case 3:
                    dhcpDiscoverPacket = new DhcpRequestPacket(i5, byAddress, bArr2, z2);
                    break;
                case 4:
                    dhcpDiscoverPacket = new DhcpDeclinePacket(i5, byAddress, byAddress2, byAddress3, byAddress4, bArr2);
                    break;
                case 5:
                    dhcpDiscoverPacket = new DhcpAckPacket(i5, z2, inetAddress, byAddress2, bArr2);
                    break;
                case 6:
                    dhcpDiscoverPacket = new DhcpNakPacket(i5, byAddress, byAddress2, byAddress3, byAddress4, bArr2);
                    break;
                case 8:
                    dhcpDiscoverPacket = new DhcpInformPacket(i5, byAddress, byAddress2, byAddress3, byAddress4, bArr2);
                    break;
            }
            dhcpDiscoverPacket.mBroadcastAddress = ipAddress2;
            dhcpDiscoverPacket.mDnsServers = arrayList;
            dhcpDiscoverPacket.mDomainName = asciiString;
            dhcpDiscoverPacket.mGateway = ipAddress3;
            dhcpDiscoverPacket.mHostName = asciiString2;
            dhcpDiscoverPacket.mLeaseTime = numValueOf;
            dhcpDiscoverPacket.mMessage = asciiString3;
            dhcpDiscoverPacket.mRequestedIp = ipAddress4;
            dhcpDiscoverPacket.mRequestedParams = bArr3;
            dhcpDiscoverPacket.mServerIdentifier = ipAddress5;
            dhcpDiscoverPacket.mSubnetMask = ipAddress6;
            return dhcpDiscoverPacket;
        } catch (UnknownHostException unused) {
            return null;
        }
    }

    private int intAbs(short s2) {
        return s2 < 0 ? s2 + 65536 : s2;
    }

    public static String macToString(byte[] bArr) {
        String str = ProxyProperties.LOCAL_EXCL_LIST;
        for (int i2 = 0; i2 < bArr.length; i2++) {
            String str2 = "0" + Integer.toHexString(bArr[i2]);
            str = str + str2.substring(str2.length() - 2);
            if (i2 != bArr.length - 1) {
                str = str + ":";
            }
        }
        return str;
    }

    private static String readAsciiString(ByteBuffer byteBuffer, int i2) {
        byte[] bArr = new byte[i2];
        byteBuffer.get(bArr);
        return new String(bArr, 0, i2, StandardCharsets.US_ASCII);
    }

    private static InetAddress readIpAddress(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[4];
        byteBuffer.get(bArr);
        try {
            return InetAddress.getByAddress(bArr);
        } catch (UnknownHostException unused) {
            return null;
        }
    }

    public void addTlv(ByteBuffer byteBuffer, byte b2, byte b3) {
        byteBuffer.put(b2);
        byteBuffer.put((byte) 1);
        byteBuffer.put(b3);
    }

    public void addTlvEnd(ByteBuffer byteBuffer) {
        byteBuffer.put((byte) -1);
    }

    public abstract ByteBuffer buildPacket(int i2, short s2, short s3);

    public abstract void doNextOp(DhcpStateMachine dhcpStateMachine);

    public void fillInPacket(int i2, InetAddress inetAddress, InetAddress inetAddress2, short s2, short s3, ByteBuffer byteBuffer, byte b2, boolean z2) {
        int iPosition;
        int iPosition2;
        int iPosition3;
        int iPosition4;
        int iPosition5;
        int iPosition6;
        byte[] address = inetAddress.getAddress();
        byte[] address2 = inetAddress2.getAddress();
        byteBuffer.clear();
        byteBuffer.order(ByteOrder.BIG_ENDIAN);
        if (i2 == 1) {
            byteBuffer.put(IP_VERSION_HEADER_LEN);
            byteBuffer.put(IP_TOS_LOWDELAY);
            iPosition5 = byteBuffer.position();
            byteBuffer.putShort((short) 0);
            byteBuffer.putShort((short) 0);
            byteBuffer.putShort(IP_FLAGS_OFFSET);
            byteBuffer.put(IP_TTL);
            byteBuffer.put(IP_TYPE_UDP);
            iPosition6 = byteBuffer.position();
            byteBuffer.putShort((short) 0);
            byteBuffer.put(address2);
            byteBuffer.put(address);
            iPosition = byteBuffer.position();
            iPosition2 = byteBuffer.position();
            byteBuffer.putShort(s3);
            byteBuffer.putShort(s2);
            iPosition3 = byteBuffer.position();
            byteBuffer.putShort((short) 0);
            iPosition4 = byteBuffer.position();
            byteBuffer.putShort((short) 0);
        } else {
            iPosition = 0;
            iPosition2 = 0;
            iPosition3 = 0;
            iPosition4 = 0;
            iPosition5 = 0;
            iPosition6 = 0;
        }
        byteBuffer.put(b2);
        byteBuffer.put((byte) 1);
        byteBuffer.put((byte) this.mClientMac.length);
        byteBuffer.put((byte) 0);
        byteBuffer.putInt(this.mTransId);
        byteBuffer.putShort((short) 0);
        if (z2) {
            byteBuffer.putShort(Short.MIN_VALUE);
        } else {
            byteBuffer.putShort((short) 0);
        }
        byteBuffer.put(this.mClientIp.getAddress());
        byteBuffer.put(this.mYourIp.getAddress());
        byteBuffer.put(this.mNextIp.getAddress());
        byteBuffer.put(this.mRelayIp.getAddress());
        byteBuffer.put(this.mClientMac);
        byteBuffer.position(byteBuffer.position() + (16 - this.mClientMac.length) + 64 + 128);
        byteBuffer.putInt(1669485411);
        finishPacket(byteBuffer);
        if ((byteBuffer.position() & 1) == 1) {
            byteBuffer.put((byte) 0);
        }
        if (i2 == 1) {
            short sPosition = (short) (byteBuffer.position() - iPosition2);
            byteBuffer.putShort(iPosition3, sPosition);
            byteBuffer.putShort(iPosition4, (short) checksum(byteBuffer, intAbs(byteBuffer.getShort(iPosition6 + 2)) + 0 + intAbs(byteBuffer.getShort(iPosition6 + 4)) + intAbs(byteBuffer.getShort(iPosition6 + 6)) + intAbs(byteBuffer.getShort(iPosition6 + 8)) + 17 + sPosition, iPosition2, byteBuffer.position()));
            byteBuffer.putShort(iPosition5, (short) byteBuffer.position());
            byteBuffer.putShort(iPosition6, (short) checksum(byteBuffer, 0, 0, iPosition));
        }
    }

    public abstract void finishPacket(ByteBuffer byteBuffer);

    public int getTransactionId() {
        return this.mTransId;
    }

    public String toString() {
        return macToString(this.mClientMac);
    }

    public void addTlv(ByteBuffer byteBuffer, byte b2, byte[] bArr) {
        if (bArr != null) {
            byteBuffer.put(b2);
            byteBuffer.put((byte) bArr.length);
            byteBuffer.put(bArr);
        }
    }

    public void addTlv(ByteBuffer byteBuffer, byte b2, InetAddress inetAddress) {
        if (inetAddress != null) {
            addTlv(byteBuffer, b2, inetAddress.getAddress());
        }
    }

    public void addTlv(ByteBuffer byteBuffer, byte b2, List<InetAddress> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        byteBuffer.put(b2);
        byteBuffer.put((byte) (list.size() * 4));
        Iterator<InetAddress> it = list.iterator();
        while (it.hasNext()) {
            byteBuffer.put(it.next().getAddress());
        }
    }

    public void addTlv(ByteBuffer byteBuffer, byte b2, Integer num) {
        if (num != null) {
            byteBuffer.put(b2);
            byteBuffer.put((byte) 4);
            byteBuffer.putInt(num.intValue());
        }
    }

    public void addTlv(ByteBuffer byteBuffer, byte b2, String str) {
        if (str != null) {
            byteBuffer.put(b2);
            byteBuffer.put((byte) str.length());
            for (int i2 = 0; i2 < str.length(); i2++) {
                byteBuffer.put((byte) str.charAt(i2));
            }
        }
    }

    public static DhcpPacket decodeFullPacket(byte[] bArr, int i2) {
        return decodeFullPacket(ByteBuffer.wrap(bArr).order(ByteOrder.BIG_ENDIAN), i2);
    }
}
