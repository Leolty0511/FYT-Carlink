.class public Li1/t$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li1/t;


# direct methods
.method public constructor <init>(Li1/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li1/t$b;->a:Li1/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Li1/t$b;->a:Li1/t;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Li1/t;->y([I)V

    return-void

    :array_0
    .array-data 4
        0x3
        0x1
        0x1
    .end array-data
.end method
