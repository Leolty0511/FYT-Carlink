.class public Ln0/o0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Ln0/o0;


# direct methods
.method public constructor <init>(Ln0/o0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/o0$a;->b:Ln0/o0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Ln0/o0$a;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget v0, p0, Ln0/o0$a;->a:I

    sget v1, Lu0/b;->a0:I

    if-eq v0, v1, :cond_0

    .line 2
    iput v1, p0, Ln0/o0$a;->a:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    const/16 v0, 0x1a

    .line 3
    invoke-static {v0}, La/i;->Q(I)V

    :cond_0
    return-void
.end method
