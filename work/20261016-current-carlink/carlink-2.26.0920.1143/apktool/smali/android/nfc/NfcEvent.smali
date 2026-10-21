.class public final Landroid/nfc/NfcEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final nfcAdapter:Landroid/nfc/NfcAdapter;

.field public final peerLlcpMajorVersion:I

.field public final peerLlcpMinorVersion:I


# direct methods
.method public constructor <init>(Landroid/nfc/NfcAdapter;B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/nfc/NfcEvent;->nfcAdapter:Landroid/nfc/NfcAdapter;

    .line 5
    .line 6
    and-int/lit16 p1, p2, 0xf0

    .line 7
    .line 8
    shr-int/lit8 p1, p1, 0x4

    .line 9
    .line 10
    iput p1, p0, Landroid/nfc/NfcEvent;->peerLlcpMajorVersion:I

    .line 11
    .line 12
    and-int/lit8 p1, p2, 0xf

    .line 13
    .line 14
    iput p1, p0, Landroid/nfc/NfcEvent;->peerLlcpMinorVersion:I

    .line 15
    .line 16
    return-void
.end method
