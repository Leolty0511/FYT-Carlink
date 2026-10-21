.class public Ln0/w$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/w;


# direct methods
.method public constructor <init>(Ln0/w;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/w$a;->a:Ln0/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget v0, Ly0/f;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Ly0/f;->x0:[I

    const/4 v2, 0x0

    const/4 v3, 0x4

    aput v3, v0, v2

    const/4 v2, 0x5

    const/16 v3, 0x8

    .line 3
    aput v3, v0, v2

    .line 4
    aput v1, v0, v1

    .line 5
    iget-object v0, p0, Ln0/w$a;->a:Ln0/w;

    invoke-static {v0}, Ln0/w;->S3(Ln0/w;)V

    :goto_0
    return-void
.end method
