.class public Li1/w$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li1/w;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/f$b<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Li1/w;


# direct methods
.method public constructor <init>(Li1/w;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li1/w$g;->a:Li1/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Li1/w$g;->b(Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/Integer;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v1, p0, Li1/w$g;->a:Li1/w;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Li1/w;->b(I)V

    return v0
.end method
