.class final Landroid/app/ActivityThread$ProviderClientRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ProviderClientRecord"
.end annotation


# instance fields
.field public final mHolder:Landroid/app/IActivityManager$ContentProviderHolder;

.field public final mLocalProvider:Landroid/content/ContentProvider;

.field public final mNames:[Ljava/lang/String;

.field public final mProvider:Landroid/content/IContentProvider;

.field public final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method public constructor <init>(Landroid/app/ActivityThread;[Ljava/lang/String;Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/IActivityManager$ContentProviderHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/app/ActivityThread$ProviderClientRecord;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Landroid/app/ActivityThread$ProviderClientRecord;->mNames:[Ljava/lang/String;

    .line 3
    iput-object p3, p0, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    .line 4
    iput-object p4, p0, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    .line 5
    iput-object p5, p0, Landroid/app/ActivityThread$ProviderClientRecord;->mHolder:Landroid/app/IActivityManager$ContentProviderHolder;

    return-void
.end method
