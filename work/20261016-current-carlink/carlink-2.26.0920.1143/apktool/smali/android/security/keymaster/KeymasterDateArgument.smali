.class Landroid/security/keymaster/KeymasterDateArgument;
.super Landroid/security/keymaster/KeymasterArgument;
.source "SourceFile"


# instance fields
.field public final date:Ljava/util/Date;


# direct methods
.method public constructor <init>(ILandroid/os/Parcel;)V
    .locals 2

    .line 11
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArgument;-><init>(I)V

    .line 12
    new-instance p1, Ljava/util/Date;

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object p1, p0, Landroid/security/keymaster/KeymasterDateArgument;->date:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(ILjava/util/Date;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArgument;-><init>(I)V

    .line 2
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    const/high16 v1, 0x60000000

    if-ne v0, v1, :cond_0

    .line 3
    iput-object p2, p0, Landroid/security/keymaster/KeymasterDateArgument;->date:Ljava/util/Date;

    return-void

    .line 4
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad date tag "

    .line 5
    invoke-static {v0, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public writeValue(Landroid/os/Parcel;)V
    .locals 2

    iget-object v0, p0, Landroid/security/keymaster/KeymasterDateArgument;->date:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
