.class public Landroid/mtp/MtpObjectInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpObjectInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mObjectInfo:Landroid/mtp/MtpObjectInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/mtp/MtpObjectInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/mtp/MtpObjectInfo;-><init>(Landroid/mtp/MtpObjectInfo$1;)V

    iput-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const/4 v1, -0x1

    .line 3
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$102(Landroid/mtp/MtpObjectInfo;I)I

    return-void
.end method

.method public constructor <init>(Landroid/mtp/MtpObjectInfo;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Landroid/mtp/MtpObjectInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/mtp/MtpObjectInfo;-><init>(Landroid/mtp/MtpObjectInfo$1;)V

    iput-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const/4 v1, -0x1

    .line 6
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$102(Landroid/mtp/MtpObjectInfo;I)I

    .line 7
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$200(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$202(Landroid/mtp/MtpObjectInfo;I)I

    .line 8
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$300(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$302(Landroid/mtp/MtpObjectInfo;I)I

    .line 9
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$400(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$402(Landroid/mtp/MtpObjectInfo;I)I

    .line 10
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$500(Landroid/mtp/MtpObjectInfo;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/mtp/MtpObjectInfo;->access$502(Landroid/mtp/MtpObjectInfo;J)J

    .line 11
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$600(Landroid/mtp/MtpObjectInfo;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/mtp/MtpObjectInfo;->access$602(Landroid/mtp/MtpObjectInfo;J)J

    .line 12
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$700(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$702(Landroid/mtp/MtpObjectInfo;I)I

    .line 13
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$800(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$802(Landroid/mtp/MtpObjectInfo;I)I

    .line 14
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$900(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$902(Landroid/mtp/MtpObjectInfo;I)I

    .line 15
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$1000(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$1002(Landroid/mtp/MtpObjectInfo;I)I

    .line 16
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$1100(Landroid/mtp/MtpObjectInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$1102(Landroid/mtp/MtpObjectInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$1200(Landroid/mtp/MtpObjectInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$1202(Landroid/mtp/MtpObjectInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$1300(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$1302(Landroid/mtp/MtpObjectInfo;I)I

    .line 19
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$1400(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$1402(Landroid/mtp/MtpObjectInfo;I)I

    .line 20
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$1500(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$1502(Landroid/mtp/MtpObjectInfo;I)I

    .line 21
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$1600(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$1602(Landroid/mtp/MtpObjectInfo;I)I

    .line 22
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$1700(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$1702(Landroid/mtp/MtpObjectInfo;I)I

    .line 23
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$1800(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$1802(Landroid/mtp/MtpObjectInfo;I)I

    .line 24
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$1900(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$1902(Landroid/mtp/MtpObjectInfo;I)I

    .line 25
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$2000(Landroid/mtp/MtpObjectInfo;)I

    move-result p1

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->access$2002(Landroid/mtp/MtpObjectInfo;I)I

    return-void
.end method


# virtual methods
.method public build()Landroid/mtp/MtpObjectInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    .line 5
    .line 6
    return-object v0
.end method

.method public setAssociationDesc(I)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->access$202(Landroid/mtp/MtpObjectInfo;I)I

    return-object p0
.end method

.method public setAssociationType(I)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->access$302(Landroid/mtp/MtpObjectInfo;I)I

    return-object p0
.end method

.method public setCompressedSize(J)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 2

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string/jumbo v1, "value"

    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->access$2100(JLjava/lang/String;)I

    move-result p1

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->access$402(Landroid/mtp/MtpObjectInfo;I)I

    return-object p0
.end method

.method public setDateCreated(J)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1, p2}, Landroid/mtp/MtpObjectInfo;->access$502(Landroid/mtp/MtpObjectInfo;J)J

    return-object p0
.end method

.method public setDateModified(J)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1, p2}, Landroid/mtp/MtpObjectInfo;->access$602(Landroid/mtp/MtpObjectInfo;J)J

    return-object p0
.end method

.method public setFormat(I)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->access$702(Landroid/mtp/MtpObjectInfo;I)I

    return-object p0
.end method

.method public setImagePixDepth(J)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 2

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string/jumbo v1, "value"

    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->access$2100(JLjava/lang/String;)I

    move-result p1

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->access$802(Landroid/mtp/MtpObjectInfo;I)I

    return-object p0
.end method

.method public setImagePixHeight(J)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 2

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string/jumbo v1, "value"

    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->access$2100(JLjava/lang/String;)I

    move-result p1

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->access$902(Landroid/mtp/MtpObjectInfo;I)I

    return-object p0
.end method

.method public setImagePixWidth(J)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 2

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string/jumbo v1, "value"

    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->access$2100(JLjava/lang/String;)I

    move-result p1

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->access$1002(Landroid/mtp/MtpObjectInfo;I)I

    return-object p0
.end method

.method public setKeywords(Ljava/lang/String;)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 2

    .line 1
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x19

    .line 10
    .line 11
    if-le v0, v1, :cond_0

    .line 12
    .line 13
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    if-nez p1, :cond_1

    .line 18
    .line 19
    const-string p1, ""

    .line 20
    .line 21
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    .line 22
    .line 23
    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->access$1102(Landroid/mtp/MtpObjectInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    .line 5
    .line 6
    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->access$1202(Landroid/mtp/MtpObjectInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setObjectHandle(I)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->access$102(Landroid/mtp/MtpObjectInfo;I)I

    return-object p0
.end method

.method public setParent(I)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->access$1302(Landroid/mtp/MtpObjectInfo;I)I

    return-object p0
.end method

.method public setProtectionStatus(I)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->access$1402(Landroid/mtp/MtpObjectInfo;I)I

    return-object p0
.end method

.method public setSequenceNumber(J)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 2

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string/jumbo v1, "value"

    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->access$2100(JLjava/lang/String;)I

    move-result p1

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->access$1502(Landroid/mtp/MtpObjectInfo;I)I

    return-object p0
.end method

.method public setStorageId(I)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->access$1602(Landroid/mtp/MtpObjectInfo;I)I

    return-object p0
.end method

.method public setThumbCompressedSize(J)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 2

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string/jumbo v1, "value"

    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->access$2100(JLjava/lang/String;)I

    move-result p1

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->access$1702(Landroid/mtp/MtpObjectInfo;I)I

    return-object p0
.end method

.method public setThumbFormat(I)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->access$1802(Landroid/mtp/MtpObjectInfo;I)I

    return-object p0
.end method

.method public setThumbPixHeight(J)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 2

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string/jumbo v1, "value"

    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->access$2100(JLjava/lang/String;)I

    move-result p1

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->access$1902(Landroid/mtp/MtpObjectInfo;I)I

    return-object p0
.end method

.method public setThumbPixWidth(J)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 2

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string/jumbo v1, "value"

    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->access$2100(JLjava/lang/String;)I

    move-result p1

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->access$2002(Landroid/mtp/MtpObjectInfo;I)I

    return-object p0
.end method
