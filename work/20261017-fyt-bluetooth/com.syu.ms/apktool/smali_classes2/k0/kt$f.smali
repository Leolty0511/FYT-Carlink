.class public Lk0/kt$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/kt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/kt;


# direct methods
.method public constructor <init>(Lk0/kt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/kt$f;->a:Lk0/kt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/kt$f;->a:Lk0/kt;

    iget v1, v0, Lk0/kt;->B:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lk0/kt;->B:I

    const/16 v2, 0x1f

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/kt;->B:I

    :cond_0
    return-void
.end method
