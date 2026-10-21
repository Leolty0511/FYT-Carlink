.class public Lk0/u8$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/u8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/u8;


# direct methods
.method public constructor <init>(Lk0/u8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/u8$i;->a:Lk0/u8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Lu0/b;->E0:I

    const/16 v1, 0xe6

    const v2, 0x50109

    if-eq v0, v1, :cond_1

    const/16 v1, 0xf2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Lk0/nt;->a:I

    if-ne v0, v2, :cond_3

    .line 3
    iget-object v0, p0, Lk0/u8$i;->a:Lk0/u8;

    const-string v1, "com.syu.carinfo.ztt600.ZTTireAct_Luz"

    invoke-static {v0, v1}, Lk0/u8;->e3(Lk0/u8;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_1
    :try_start_0
    sget v0, Lk0/nt;->a:I

    const v1, 0x60109

    if-ne v0, v1, :cond_2

    .line 5
    iget-object v0, p0, Lk0/u8$i;->a:Lk0/u8;

    const-string v1, "com.syu.carinfo.ztt600.PM25Act_Bnr"

    invoke-static {v0, v1}, Lk0/u8;->e3(Lk0/u8;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-ne v0, v2, :cond_3

    .line 6
    iget-object v0, p0, Lk0/u8$i;->a:Lk0/u8;

    const-string v1, "com.syu.carinfo.ztt600.PM25Act_Luz"

    invoke-static {v0, v1}, Lk0/u8;->e3(Lk0/u8;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_0
    return-void
.end method
