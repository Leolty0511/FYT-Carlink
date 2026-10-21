.class Landroid/accounts/ChooseAccountActivity$AccountInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/ChooseAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountInfo"
.end annotation


# instance fields
.field final drawable:Landroid/graphics/drawable/Drawable;

.field final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/accounts/ChooseAccountActivity$AccountInfo;->name:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/accounts/ChooseAccountActivity$AccountInfo;->drawable:Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    return-void
.end method
