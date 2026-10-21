.class public Lchip/Chip$a0$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchip/Chip$a0$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lchip/Chip$a0$a;


# direct methods
.method public constructor <init>(Lchip/Chip$a0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lchip/Chip$a0$a$a;->a:Lchip/Chip$a0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, La/b;->e0:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget v0, Lu0/b;->n4:I

    if-ne v0, v1, :cond_1

    sget v0, Lu0/b;->g:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    invoke-static {v1, v0}, Ly0/h;->Y(IZ)V

    return-void
.end method
