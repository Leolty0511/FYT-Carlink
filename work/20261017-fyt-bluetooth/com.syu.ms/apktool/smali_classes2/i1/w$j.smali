.class public Li1/w$j;
.super Lc/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li1/w;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Li1/w;


# direct methods
.method public constructor <init>(Li1/w;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li1/w$j;->e:Li1/w;

    invoke-direct {p0}, Lc/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)Z
    .locals 1

    .line 1
    iget-object p1, p0, Li1/w$j;->e:Li1/w;

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Li1/w;->h([I)V

    const/4 p1, 0x1

    return p1

    nop

    :array_0
    .array-data 4
        0x2
        0x2
        0xf1
        0x0
    .end array-data
.end method

.method public c(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
