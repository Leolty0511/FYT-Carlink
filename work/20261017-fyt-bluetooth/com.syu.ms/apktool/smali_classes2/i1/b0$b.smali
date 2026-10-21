.class public abstract Li1/b0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li1/b0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# instance fields
.field public a:Li1/b0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Li1/b0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li1/b0$b;->a:Li1/b0;

    return-void
.end method
