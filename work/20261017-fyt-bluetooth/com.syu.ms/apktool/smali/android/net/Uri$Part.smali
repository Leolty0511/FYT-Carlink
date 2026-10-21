.class Landroid/net/Uri$Part;
.super Landroid/net/Uri$AbstractPart;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Part"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/Uri$Part$EmptyPart;
    }
.end annotation


# static fields
.field public static final EMPTY:Landroid/net/Uri$Part;

.field public static final NULL:Landroid/net/Uri$Part;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/net/Uri$Part$EmptyPart;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/Uri$Part$EmptyPart;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    .line 2
    new-instance v0, Landroid/net/Uri$Part$EmptyPart;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/net/Uri$Part$EmptyPart;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/net/Uri$Part;->EMPTY:Landroid/net/Uri$Part;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/net/Uri$AbstractPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/net/Uri$Part;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static from(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Part;
    .locals 1

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 3
    sget-object p0, Landroid/net/Uri$Part;->EMPTY:Landroid/net/Uri$Part;

    return-object p0

    :cond_1
    if-nez p1, :cond_2

    .line 4
    sget-object p0, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    return-object p0

    .line 5
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 6
    sget-object p0, Landroid/net/Uri$Part;->EMPTY:Landroid/net/Uri$Part;

    return-object p0

    .line 7
    :cond_3
    new-instance v0, Landroid/net/Uri$Part;

    invoke-direct {v0, p0, p1}, Landroid/net/Uri$Part;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromDecoded(Ljava/lang/String;)Landroid/net/Uri$Part;
    .locals 1

    .line 1
    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/net/Uri$Part;->from(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object p0

    return-object p0
.end method

.method public static fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;
    .locals 1

    .line 1
    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/net/Uri$Part;->from(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object p0

    return-object p0
.end method

.method public static nonNull(Landroid/net/Uri$Part;)Landroid/net/Uri$Part;
    .locals 0

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    :cond_0
    return-object p0
.end method

.method public static readFrom(Landroid/os/Parcel;)Landroid/net/Uri$Part;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri$Part;->fromDecoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown representation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object p0

    return-object p0

    .line 5
    :cond_2
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/net/Uri$Part;->from(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getEncoded()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/Uri$AbstractPart;->encoded:Ljava/lang/String;

    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Landroid/net/Uri$AbstractPart;->encoded:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/Uri$AbstractPart;->encoded:Ljava/lang/String;

    :goto_1
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
