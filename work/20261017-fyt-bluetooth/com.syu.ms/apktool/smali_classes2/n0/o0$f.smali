.class public Ln0/o0$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lchip/Chip$d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln0/o0;->S2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/o0;


# direct methods
.method public constructor <init>(Ln0/o0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/o0$f;->a:Ln0/o0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    sget-object v0, Lh0/c;->b:Lh0/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lh0/f;->reset()V

    :cond_0
    return-void
.end method
