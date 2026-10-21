.class public Lk0/le$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/le;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/le;


# direct methods
.method public constructor <init>(Lk0/le;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/le$a;->a:Lk0/le;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/le$a;->a:Lk0/le;

    const/4 v1, 0x0

    iput v1, v0, Lk0/le;->h:I

    .line 2
    iput v1, v0, Lk0/le;->i:I

    return-void
.end method
