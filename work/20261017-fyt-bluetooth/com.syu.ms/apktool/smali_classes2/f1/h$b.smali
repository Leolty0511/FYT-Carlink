.class public Lf1/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf1/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf1/h;


# direct methods
.method public constructor <init>(Lf1/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf1/h$b;->a:Lf1/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/h$b;->a:Lf1/h;

    iget-boolean v1, v0, Lf1/q;->x:Z

    invoke-static {v0, v1}, Lf1/h;->h0(Lf1/h;Z)V

    return-void
.end method
