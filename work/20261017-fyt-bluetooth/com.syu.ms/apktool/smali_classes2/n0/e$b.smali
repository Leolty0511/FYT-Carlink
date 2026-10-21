.class public Ln0/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln0/e;->b3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/e;


# direct methods
.method public constructor <init>(Ln0/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/e$b;->a:Ln0/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Lu0/b;->P0:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lu0/b;->t4:[I

    const/16 v2, 0x1a

    aput v2, v0, v1

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lu0/b;->t4:[I

    aput v1, v0, v1

    :goto_0
    return-void
.end method
