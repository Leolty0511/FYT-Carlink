.class public Lk0/ud$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ud;


# direct methods
.method public constructor <init>(Lk0/ud;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ud$l;->a:Lk0/ud;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Lh0/c;->P:I

    div-int/lit16 v0, v0, 0x3e8

    .line 2
    iget-object v1, p0, Lk0/ud$l;->a:Lk0/ud;

    iget v2, v1, Lk0/ud;->H:I

    if-eq v2, v0, :cond_0

    .line 3
    iput v0, v1, Lk0/ud;->H:I

    .line 4
    invoke-static {v1, v0}, Lk0/ud;->n3(Lk0/ud;I)V

    :cond_0
    return-void
.end method
