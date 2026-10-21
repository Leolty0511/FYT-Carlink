.class public Lchip/Chip$z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchip/Chip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lchip/Chip;


# direct methods
.method public constructor <init>(Lchip/Chip;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lchip/Chip$z;->a:Lchip/Chip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Lu0/b;->p0:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "/cache/radio/.rdsmsg"

    .line 2
    invoke-static {v0}, Lq1/a;->a(Ljava/lang/String;)V

    .line 3
    sget v0, Lu0/b;->I3:I

    sput v0, Lu0/b;->H3:I

    const/16 v2, 0x20

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-static {v2, v1}, Ly0/h;->Y(IZ)V

    :cond_1
    return-void
.end method
