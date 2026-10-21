.class public Lcom/android/internal/app/ResolverActivity$a;
.super Lcom/android/internal/content/PackageMonitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$a;->a:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onSomePackagesChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$a;->a:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->b(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$e;->c()V

    return-void
.end method
