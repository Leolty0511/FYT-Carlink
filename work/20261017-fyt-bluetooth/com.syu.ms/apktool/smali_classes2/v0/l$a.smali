.class public Lv0/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv0/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lv0/l;


# direct methods
.method public constructor <init>(Lv0/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv0/l$a;->a:Lv0/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Lu0/b;->I2:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_0

    if-ltz v0, :cond_0

    .line 2
    iget-object v2, p0, Lv0/l$a;->a:Lv0/l;

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Lv0/l;->N2(Lv0/l;I)I

    goto :goto_0

    :cond_0
    const/16 v2, 0x28

    if-gt v0, v2, :cond_1

    if-le v0, v1, :cond_1

    .line 3
    iget-object v2, p0, Lv0/l$a;->a:Lv0/l;

    sub-int/2addr v0, v1

    or-int/lit16 v0, v0, 0x80

    invoke-static {v2, v0}, Lv0/l;->N2(Lv0/l;I)I

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lv0/l$a;->a:Lv0/l;

    invoke-virtual {v0}, Lv0/l;->M2()V

    return-void
.end method
