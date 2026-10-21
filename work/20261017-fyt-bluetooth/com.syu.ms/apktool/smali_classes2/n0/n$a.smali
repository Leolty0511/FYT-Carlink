.class public Ln0/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/n;


# direct methods
.method public constructor <init>(Ln0/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/n$a;->a:Ln0/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Ly0/f;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Ly0/f;->x0:[I

    const/4 v1, 0x0

    const/16 v2, 0xa

    aput v2, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x4

    .line 3
    aput v2, v0, v1

    const/4 v1, 0x3

    .line 4
    aput v2, v0, v1

    :goto_0
    return-void
.end method
