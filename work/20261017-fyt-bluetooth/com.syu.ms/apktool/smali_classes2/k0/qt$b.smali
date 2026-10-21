.class public Lk0/qt$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/qt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget v0, Lk0/qt;->q:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sput v0, Lk0/qt;->q:I

    if-ltz v0, :cond_1

    const/16 v0, 0x40d

    new-array v2, v1, [I

    .line 2
    sget v3, Lk0/nt;->a:I

    invoke-static {v3}, Lk0/qt;->g(I)I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x3e8

    new-array v2, v1, [I

    .line 3
    sget v3, Lk0/nt;->a:I

    aput v3, v2, v4

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FinalCanbus.U_CANBUS_ID   == "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lk0/nt;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  GetcanbusIdToUiserver(DataCanbus.sCanbusId   == "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lk0/nt;->a:I

    invoke-static {v2}, Lk0/qt;->g(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  SendNum = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lk0/qt;->q:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "zed"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xc4

    .line 5
    invoke-static {v0, v4}, Lm1/c;->c(II)I

    move-result v0

    invoke-static {v0}, Lu0/d;->w(I)V

    .line 6
    sget v0, Lk0/nt;->a:I

    const v2, 0xffff

    and-int/2addr v2, v0

    const/16 v3, 0x70

    if-eq v2, v3, :cond_2

    const/16 v3, 0x12a

    if-eq v2, v3, :cond_2

    const/16 v3, 0x1c0

    if-eq v2, v3, :cond_2

    const v2, 0x5701c7

    if-eq v0, v2, :cond_2

    const v2, 0xbe01c8

    if-eq v0, v2, :cond_2

    .line 7
    sget v0, Lu0/b;->w:I

    const/4 v2, 0x2

    const/16 v3, 0x419

    if-ne v0, v1, :cond_0

    new-array v0, v2, [I

    .line 8
    fill-array-data v0, :array_0

    invoke-static {v3, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v0, v2, [I

    .line 9
    fill-array-data v0, :array_1

    invoke-static {v3, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {}, Lk0/qt;->w()Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xb
        0x40
    .end array-data

    :array_1
    .array-data 4
        0xb
        0x0
    .end array-data
.end method
