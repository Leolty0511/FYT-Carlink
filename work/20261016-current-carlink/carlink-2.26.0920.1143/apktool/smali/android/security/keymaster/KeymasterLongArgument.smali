.class Landroid/security/keymaster/KeymasterLongArgument;
.super Landroid/security/keymaster/KeymasterArgument;
.source "SourceFile"


# instance fields
.field public final value:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArgument;-><init>(I)V

    .line 2
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    const/high16 v1, -0x60000000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x50000000

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Bad long tag "

    .line 4
    invoke-static {p3, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 6
    :cond_1
    :goto_0
    iput-wide p2, p0, Landroid/security/keymaster/KeymasterLongArgument;->value:J

    return-void
.end method

.method public constructor <init>(ILandroid/os/Parcel;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArgument;-><init>(I)V

    .line 12
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    iput-wide p1, p0, Landroid/security/keymaster/KeymasterLongArgument;->value:J

    return-void
.end method


# virtual methods
.method public writeValue(Landroid/os/Parcel;)V
    .locals 2

    iget-wide v0, p0, Landroid/security/keymaster/KeymasterLongArgument;->value:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
