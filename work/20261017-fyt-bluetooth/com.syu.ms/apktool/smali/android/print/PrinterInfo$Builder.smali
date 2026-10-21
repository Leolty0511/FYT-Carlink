.class public final Landroid/print/PrinterInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrinterInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mPrototype:Landroid/print/PrinterInfo;


# direct methods
.method public constructor <init>(Landroid/print/PrinterId;Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-direct {p0, p3}, Landroid/print/PrinterInfo$Builder;->isValidStatus(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Landroid/print/PrinterInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/print/PrinterInfo;-><init>(Landroid/print/PrinterInfo$1;)V

    iput-object v0, p0, Landroid/print/PrinterInfo$Builder;->mPrototype:Landroid/print/PrinterInfo;

    .line 5
    invoke-static {v0, p1}, Landroid/print/PrinterInfo;->access$102(Landroid/print/PrinterInfo;Landroid/print/PrinterId;)Landroid/print/PrinterId;

    .line 6
    invoke-static {v0, p2}, Landroid/print/PrinterInfo;->access$202(Landroid/print/PrinterInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    invoke-static {v0, p3}, Landroid/print/PrinterInfo;->access$302(Landroid/print/PrinterInfo;I)I

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "status is invalid."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name cannot be empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "printerId cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/print/PrinterInfo;)V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/print/PrinterInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/print/PrinterInfo;-><init>(Landroid/print/PrinterInfo$1;)V

    iput-object v0, p0, Landroid/print/PrinterInfo$Builder;->mPrototype:Landroid/print/PrinterInfo;

    .line 13
    invoke-virtual {v0, p1}, Landroid/print/PrinterInfo;->copyFrom(Landroid/print/PrinterInfo;)V

    return-void
.end method

.method private isValidStatus(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public build()Landroid/print/PrinterInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/print/PrinterInfo$Builder;->mPrototype:Landroid/print/PrinterInfo;

    return-object v0
.end method

.method public setCapabilities(Landroid/print/PrinterCapabilitiesInfo;)Landroid/print/PrinterInfo$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/print/PrinterInfo$Builder;->mPrototype:Landroid/print/PrinterInfo;

    invoke-static {v0, p1}, Landroid/print/PrinterInfo;->access$502(Landroid/print/PrinterInfo;Landroid/print/PrinterCapabilitiesInfo;)Landroid/print/PrinterCapabilitiesInfo;

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Landroid/print/PrinterInfo$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/print/PrinterInfo$Builder;->mPrototype:Landroid/print/PrinterInfo;

    invoke-static {v0, p1}, Landroid/print/PrinterInfo;->access$402(Landroid/print/PrinterInfo;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Landroid/print/PrinterInfo$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/print/PrinterInfo$Builder;->mPrototype:Landroid/print/PrinterInfo;

    invoke-static {v0, p1}, Landroid/print/PrinterInfo;->access$202(Landroid/print/PrinterInfo;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setStatus(I)Landroid/print/PrinterInfo$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/print/PrinterInfo$Builder;->mPrototype:Landroid/print/PrinterInfo;

    invoke-static {v0, p1}, Landroid/print/PrinterInfo;->access$302(Landroid/print/PrinterInfo;I)I

    return-object p0
.end method
