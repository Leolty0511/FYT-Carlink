.class public Lk0/up$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/up;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/up;


# direct methods
.method public constructor <init>(Lk0/up;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/up$c;->a:Lk0/up;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/up$c;->a:Lk0/up;

    invoke-static {v0}, Lk0/up;->f3(Lk0/up;)V

    return-void
.end method
